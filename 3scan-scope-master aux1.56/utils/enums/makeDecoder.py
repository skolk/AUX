import time
from pyparsing import *

typedef_start = Literal("typedef enum").suppress()
open_brace = Literal("{").suppress()
close_brace = Literal("}").suppress()
varible_name = Word(alphanums + "_")
brief_description = Literal(r"/// \brief").suppress() + SkipTo(LineEnd())
bitmask = Literal("(1 <<") + Word(nums) + Literal(")")
integer = Word(nums)
expression = bitmask | integer

def merge_toks(string, locs, tokens):
    tokens = [" ".join(tokens)]
    return tokens
expression.setParseAction(merge_toks)

item_expression = varible_name + Literal("=").suppress() + expression
item_with_description = Group(brief_description + item_expression)
comma_delimited_iwd = item_with_description + ZeroOrMore(Literal(",").suppress() + item_with_description) + Optional(",").suppress()
full_enumeration = typedef_start + open_brace + comma_delimited_iwd  + close_brace + varible_name + Literal(";").suppress()


def writeHeader(f):
    # Write out the header whatnot
    f.write("// #############################################\n")
    f.write("// # Automatically Generated by makeDecoder.py #\n")
    f.write("// # " + time.ctime() + "        #\n" )
    f.write("// #############################################\n")
    f.write("#include <iostream>"  + "\n")
    f.write("#include <sstream>"   + "\n")
    f.write("#include <string>"    + "\n\n")
    f.write("using namespace std;" + "\n")
    f.write("\n")

def writeFooter(f):
    ring.write("}\n\n")

# Open the input and ouptut filez
outFile = open(sys.argv[1], "w")
cppStri = open(sys.argv[2]).read()


def pprint_some_shit(string, locs, tokens):
    enumeration_name = tokens.pop()

    string_decode_function = "string decode%s(long code)\n" % enumeration_name
    string_decode_function += "{\n"
    string_decode_function += "  stringstream return_stream;\n"

    for long_desc, short_desc, conditional in tokens:
        if long_desc == "":
            long_desc = short_desc.split("_")[-1]

        long_desc = long_desc.replace('"', r'\"')

        if "<<" in conditional:
            string_decode_function += "  if (code & %s)\n" % conditional
        else:
            string_decode_function += "  if (code == %s)\n" % conditional

        string_decode_function += '    return_stream << "\t" << "%s" << endl;\n' % long_desc

    string_decode_function += "  return return_stream.str();\n}\n\n"
    outFile.write(string_decode_function)
    print short_desc, long_desc, conditional

full_enumeration.setParseAction(pprint_some_shit)
bunch_of_enumerations = OneOrMore(full_enumeration + Optional(brief_description).suppress() )

# This results in the the actaul cpp code being emmitted
bunch_of_enumerations.parseString(cppStri)

# Add the below only to the Ensemble decoder.
def ensBonusPSOStuff(f):
    # Some horrible crap to be added manually
    lineDescrips = (
        ("Distance FIFO Empty", "FIFO used for ARRAY mode distance firing (PSODISTANCE <axis> ARRAY command) is empty."),
        ("Laser FIFO Empty", "FIFO used for BITMAP or BITMASK output mode (PSOOUTPUT <axis> BIT MAP or PSOOUTPUT <axis> BIT MASK commands) is empty."),
        ("Window1 FIFO Empty", "FIFO used for WINDOW ARRAY mode (PSOWINDOW <axis> 1 ARRAY command) or data acquisition (DATAACQ <axis> 1 ARRAY command) is empty."),
        ("Window 2 FIFO Empty", "FIFO used for WINDOW ARRAY mode (PSOWINDOW <axis> 2 RANGE ARRAY command) or data acquisition (DATAACQ <axis> 2 ARRAY command) is empty."),
        ("Firing Active Pulse Gen #1 (Busy)",  "Indicates the primary pulse generator is currently generating an output pulse stream."),
        ("There is no bit 5 it seems", "Nada"),
        ("Inside Window 1", "Indicates the position counter for Window 1 is within the limits specified by the WINDOW RANGE command."),
        ("Inside Window 2", "Indicates the position counter for Window 2 is within the limits specified by the WINDOW RANGE command."),
        ("There is no bit 8 it seems", "Nada"),
        ("PSO Output1 Status", "Indicates the state of the primary PSO hardware output (active low)."))
    # Output the above
    f.write("// Added semi-Manually by MRG\n")
    f.write("string decodeHPEPSO(long code)\n")
    f.write("{\n")
    f.write("  stringstream return_stream;\n")

    for i, (shortD, longD) in enumerate(lineDescrips) :
        f.write("  if( code & (1 << %i) )\n" % x)
        f.write('     return_stream << "  " << "(%s) %s" << endl;\n' % (shortD, longD) )

    ring.write("return return_stream.str();\n")
