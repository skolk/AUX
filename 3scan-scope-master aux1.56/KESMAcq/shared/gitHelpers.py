import os

from .Printer import dbPrint


def getShellEcho(cmd):
    return os.popen(cmd).read().rstrip()  # rstrip removes a \n from the end


def getGitBranch():
    if not os.path.exists(".git"):
        return "Unknown"

    # this line returns 'refs/heads/branchname'
    fullBranchName = getShellEcho("git symbolic-ref -q HEAD")
    branchNameParts = fullBranchName.split('/')
    if len(branchNameParts) != 3:
        dbPrint("Could not retrieve git branch. Result of query: " + fullBranchName)
        return "Unknown"

    return fullBranchName.split('/')[2]


def getGitSHA():
    if not os.path.exists(".git"):
        return "Unknown"

    return getShellEcho("git rev-parse HEAD")

if __name__ == '__main__':
    dbPrint('git branch: ' + getGitBranch())
    dbPrint('git SHA1:   ' + getGitSHA())
