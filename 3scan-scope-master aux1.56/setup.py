import subprocess, os, sys
from setuptools import setup, find_packages

readmeText = open(os.path.join(os.path.dirname(__file__), "README.rst")).read()


def getFilesFromDir(directory, acceptFunc=None):
    if acceptFunc is None:
        acceptFunc = lambda f: True
    filesToCollect = []
    for root, dirs, files in os.walk(directory):
        # Don't copy over compiled stuff
        if os.path.join(".meteor", "local") in root:
            continue

        files = [os.path.join(root, f) for f in files if acceptFunc(f)]

        # remove .npm folder to avoid moving compiled npm stuffs
        if ".npm" in dirs:
            dirs.remove(".npm")

        filesToCollect.append((root, files))

    return filesToCollect

# Recursively spider the web directory and add them also
webDirectory = os.path.join("KESMAcq", "web")
# We never want this file-like object in the package.
notShellSock = lambda f: "shell.sock" not in f
if sys.platform == "win32":
    acceptFunc = lambda f: notShellSock(f) and ("allowedProcesses" in f)
    webFiles = getFilesFromDir(webDirectory, acceptFunc)
else:
    webFiles = getFilesFromDir(webDirectory, notShellSock)

# Same exercise for the cam/vic files
camDirectory = os.path.join("KESMAcq", "drivers", "SaperaCamera", "configs")
camFiles = getFilesFromDir(camDirectory)

# Find font files for the fake camera to generate annotated images
fontDirectory = os.path.join("KESMAcq", "drivers", "FakeCamera")
fontFiles = getFilesFromDir(fontDirectory, lambda f: f.endswith(".ttf"))

# Get the version number from git tags:
# Fetch version from git tags, and write to version.py.
# Also, when git is not available (PyPi package), use stored version.py.
versionFileName = os.path.join(os.path.dirname(__file__), "KESMAcq", '_version.py')
version_git = subprocess.check_output(["git", "describe", "--long", "--tags"]).decode("ascii").rstrip()
vn, build, shortHash = version_git.split("-")

version_msg = "# Do not edit or commit this file, pipeline versioning is governed by git tags"
quoted = lambda s: '"' + s + '"'

with open(versionFileName, 'w') as fh:
    fh.write(version_msg + os.linesep)
    fh.write("__version__ = " + quoted(vn) + os.linesep)
    fh.write("__build__ = " + quoted(build) + os.linesep)
    fh.write("__githash__ = " + quoted(shortHash) + os.linesep)


# MRG TODO: Run wrapper generators here.

# Pass all the above to the setup script
setup(
    name="KESMAcq",
    version=vn,
    author="3Scan",
    author_email="notifications@3scan.com",
    description="3Scan microscope automation and processing tools.",
    license="Proprietary",
    url="http://admin.kesm.3scan.com",
    packages=find_packages(),
    data_files=webFiles + camFiles + fontFiles,
    package_data={"KESMAcq.drivers.SaperaCamera": ["cheaders.h"],
                  "KESMAcq.drivers.A3200Stage": ["cheaders.h"]
                  },
    long_description=readmeText,
)
