import time
import pyparsing as pp


class HeaderExtractor:
    """
    This class is a tool designed to extract and resolve c header files into
    a format that is friendly to the cffi module.  It has specific tools for
    isolating typedef enum/struct blocks as well as function calls.  It also
    is capable of resolving some basic arithmetic as is commonly seen in enums
    using eval (think 1<<2 . . .  1<<3) thanks to the similarity of Python and
    c math maniupulation
    """
    def __init__(self, outputCFLO, outputPYFLO, replacements={}):
        # This is the folder to export the headers into.
        self.exp = outputCFLO
        self.pyexp = outputPYFLO
        self.replacements = replacements

    def loadIncludeFile(self, pth):
        """
        Load up an include file for analysis
        """
        self.pth = pth
        self.txt = open(self.pth).read()

        # Tabs derp up pyparsings distance metrics
        self.txt = self.txt.replace("\t", "    ")
        self.txt = self._removeComments(self.txt)

        # Perform replacements as necessary (used to remove __stdcall and similar)
        for search, replace in self.replacements.items():
            self.txt = self.txt.replace(search, replace)

        self.exp.write("\n")
        self.exp.write("/" * 76 + "\n")
        self.exp.write("// Auto-extracted header from %s\n" % time.ctime())
        self.exp.write("// Based on %s\n" % self.pth)
        self.exp.write("/" * 76 + "\n")

        self.pyexp.write("\n")
        self.pyexp.write("#" * 76 + "\n")
        self.pyexp.write("# Auto-extracted header from %s\n" % time.ctime())
        self.pyexp.write("# Based on %s\n" % self.pth)
        self.pyexp.write("#" * 76 + "\n")

    # MRG TODO: it would be nice to retool these iterators to pass the original line numbers
    # forward and provide more coherent debugging for complex situations
    def _removeComments(self, txt):
        # NB: this is not complete or a even a good way to do this as it only removes comments distinct lines
        strippedLines = [line for line in txt.split("\n") if not line.strip().startswith("//")]
        return "\n".join(strippedLines)

    def _writeBlock(self, textBlock, description):
        self.exp.write("\n")
        self.exp.write("// " + description.strip() + "\n")
        self.exp.write(textBlock)
        self.exp.write("\n")
        self.exp.flush()

    def _writePyBlock(self, textBlock, description):
        self.pyexp.write("\n")
        self.pyexp.write("# " + description.strip() + "\n")
        self.pyexp.write(textBlock)
        self.pyexp.write("\n")
        self.pyexp.flush()

    def _lineIterator(self, ignoreComments=True):
        textLines = self.txt.split("\n")
        strippedLines = [line.strip() for line in textLines]

        for line in strippedLines:
            if ignoreComments and line.startswith("//"):
                continue
            yield line

    def manualInsert(self, text):
        """
        This function includes a specific block of text into the include file,
        which is useful for dealing with macros and other hacks found in headers
        """
        self._writeBlock(text, "manualInsert(%s) from %s" % (text, self.pth))

    def prunedLineIterator(self, lineStart):
        for line in self._lineIterator():
            if not line.lower().startswith(lineStart):
                continue
            yield line

    def analyzeForIncludes(self):
        '''Given a .h file find other files it points at'''
        results = []
        for line in self.prunedLineIterator("#include"):
            includeStr, iFileStr = line.split()
            results.append(iFileStr[1:-1])
        return results

    def analyzeForDefines(self):
        """
        Find macro defines. NB will include anything in
        an #ifdef and other blocks as well
        """
        results = {}
        for line in self.prunedLineIterator("#define"):
            define, name, *definition = line.split()
            results[name] = definition
        return results

    def extractBasicTD(self, tdName):
        '''This is used to extract single line typedefs.  Think typedef DOUBLE dobule;'''
        for line in self._lineIterator():
            if ("typedef" in line) and (tdName in line):
                self._writeBlock(line, "extractBasicTD(%s) from %s" % (tdName, self.pth))
                return line

        raise RuntimeError("typedef for " + tdName + " not found in file:\n\t" + self.pth)

    def scanForMatch(self, parser, stringToParse):
        results = list(parser.scanString(stringToParse, maxMatches=1))
        return len(results) > 0

    def extractFunction(self, funcName):
        '''Extract a single line function declaration'''

        functionDefinitionParser = pp.Literal(funcName) + pp.Literal("(") + pp.SkipTo(")", include=True) + pp.Literal(";")

        for line in self._lineIterator():
            # This is a duplicate check to below, but much faster.
            if funcName not in line:
                continue

            if not self.scanForMatch(functionDefinitionParser, line):
                continue
            self._writeBlock(line, "extractFunction(%s) from %s" % (funcName, self.pth))
            return line

        raise RuntimeError("Function definition for " + funcName + "() not found in file:\n\t" + self.pth)

    def extractTDEnum(self, identifier, appendToFile=True):
        '''Extract a simple typedef enum.  This means no arithmetic on the right-hand side'''
        hackyContents = pp.Literal("{") + pp.SkipTo(pp.Literal("}")) + pp.Literal("}")
        hackyTDEnum = pp.Literal("typedef") + pp.Literal("enum") + hackyContents + pp.Literal(identifier) + pp.Literal(";")
        result = list(hackyTDEnum.scanString(self.txt, maxMatches=1))

        if len(result) == 0:
            raise RuntimeError("typedef enum for " + identifier + " not found in:" + self.pth)

        cruft, startOffset, endOffest = result[0]
        resultingText = self.txt[startOffset:endOffest]
        if appendToFile:
            self._writeBlock(resultingText, "extractTDEnum(%s) from %s" % (identifier, self.pth))
        return resultingText

    def extractAndSimplifyEnum(self, identifier, defines={}):
        '''
        Extract a possibly complex typedef enum.
        This function is a bit fragile, but seems to work!
        '''
        # Get the full text of the enum
        enumTxt = self.extractTDEnum(identifier, appendToFile=False)

        # Break it into header, stuff in {} and footer
        header = pp.Literal("typedef") + pp.Literal("enum") + pp.Literal("{")
        contents = pp.SkipTo(pp.Literal("}"))
        footer = pp.Literal("}") + pp.Literal(identifier) + pp.Literal(";")

        enumTextParser = header.suppress() + contents + footer.suppress()
        enumTextContents = enumTextParser.parseString(enumTxt)[0]

        # Now we break the it up by ","
        defLines = [line.strip() for line in enumTextContents.split(",") if line.strip() != ""]

        # Lastly we break up the individual definitions and eval them with defines in place
        enumValues = {}
        for line in defLines:
            token, rhs = [t.strip() for t in line.split("=")]
            rhs = rhs.replace("1u", "1")  # XXX HACK!
            enumValues[eval(rhs, defines)] = token

        # Now we use the evaluated result to reassemble the c with all macros resolved
        cReturnLines = ["typedef enum {"]
        for key in sorted(enumValues.keys()):
            cReturnLines += ["    " + enumValues[key] + " = " + str(key) + ","]
        cReturnLines += ["} " + identifier + ";"]
        cReturnText = "\n".join(cReturnLines)
        self._writeBlock(cReturnText, "extractAndSimplifyEnum(%s) from %s" % (identifier, self.pth))

        # For these we also make a python header entry as enum's arent exported in the ABI
        enumEntries = []
        for key in sorted(enumValues.keys()):
            enumEntries += ['    ("' + enumValues[key] + '", ' + str(key) + ")"]
        pyReturnText = identifier + " = dict((\n" + ",\n".join(enumEntries) + "))"
        self._writePyBlock(pyReturnText, "extractAndSimplifyEnum(%s) from %s" % (identifier, self.pth))
        return cReturnText, enumValues

    def extractStruct(self, identifier):
        '''Extract a structure from a c header file.'''
        hackyContents = pp.Literal("{") + pp.SkipTo(pp.Literal("}"), include=True)
        cIdent = pp.Optional(pp.Word(pp.alphanums + "_"))
        hackyTDEnum = pp.Literal("typedef") + pp.Literal("struct") + pp.Optional(cIdent) + hackyContents + pp.Literal(identifier) + pp.SkipTo(pp.Literal(";"), include=True)
        result = list(hackyTDEnum.scanString(self.txt, maxMatches=1))

        if len(result) == 0:
            raise RuntimeError("typedef struct for " + identifier + " not found in:" + self.pth)

        cruft, startOffset, endOffest = result[0]
        cResultString = self.txt[startOffset:endOffest]
        self._writeBlock(cResultString, "extractStruct(%s) from %s" % (identifier, self.pth))
        return cResultString
