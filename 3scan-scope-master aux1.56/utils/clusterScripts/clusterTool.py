import  os, pprint

# HACKY HACKY HACKEY XXX HORRIBLE should be applied to every third line of this file or so.

stickIDs = ["_Patriot_Memory_0701349D0CB2E008-0:0",
            "_Patriot_Memory_0701349D0CB2DE15-0:0",
            "_Patriot_Memory_0701349D1CB2E057-0:0",
            "_Patriot_Memory_0701349D10B2DE23-0:0" ]

serialToNumber = dict((s, n) for n, s in enumerate(stickIDs))
numberToSerial = dict((n, s) for n, s in enumerate(stickIDs))

def getDevInfo(deviceName):
    f = os.popen("udevadm info --query=all --name=%s" % deviceName )

    infoDict = {}
    for line in f.readlines():
        if not line.startswith("E"): continue
        key, value = line[3:].split("=")
        infoDict[key] = value.strip()
    return infoDict

def findClusterSticks():
    paths = []
    for letter in "bcdef":
        path = "/dev/sd" + letter

        # Dont try non-existant
        if not os.path.exists(path):
            continue

        # Get the info, confirm flash device
        info = getDevInfo(path)
        if "Patriot_Memory" in info["ID_SERIAL"]:
            paths.append(path)
    return paths

def findStickByNumber(number):
    for stick in findClusterSticks():
        stickSerial = getDevInfo(stick)["ID_SERIAL"]
        stickNumber = serialToNumber[stickSerial]
        if stickNumber == number:
            return stick

    raise RuntimeError("Stick #%i not found." % number  )


def unmountDevice(device):
    for i in range(10):
        pth = device + str(i)
        if not os.path.exists(pth): continue
        os.system("umount " + pth)

def stickPathToSerial(path):
    return getDevInfo(path)["ID_SERIAL"]

def stickPathToNumber(path):
    serial = stickPathToSerial(path)
    return serialToNumber[serial]

def devPathToFilePath(devPath):
    for line in open("/etc/mtab"):
        if line.startswith(devPath):
            return line.split()[1]

    return None

def promptForReplug():
    print "Please unplug and replug all sticks, then hit enter"
    raw_input()


interfacesFileText = """# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback

auto eth1
iface eth1 inet static
        address 192.168.1.%i
        netmask 255.255.255.0
        gateway 192.168.1.1
allow-hotplug eth0
"""

def fixInterfaces(stkNum):
    devPath = findStickByNumber(stkNum)
    fsPath  = devPathToFilePath(devPath)

    intFile = open(os.path.join(fsPath, "etc", "network", "interfaces"), "w")
    intFile.write(interfacesFileText % (90 + stkNum))


hostsFileText = """127.0.0.1	localhost
127.0.1.1	brainslave%i

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
"""

def fixHosts(stkNum):
    devPath = findStickByNumber(stkNum)
    fsPath  = devPathToFilePath(devPath)

    hostsFile = open(os.path.join(fsPath, "etc", "hosts"), "w")
    hostsFile.write(hostsFileText % stkNum)


def fixHostName(stkNum):
    devPath = findStickByNumber(stkNum)
    fsPath  = devPathToFilePath(devPath)

    hostnameFile = open(os.path.join(fsPath, "etc", "hostname"), "w")
    hostnameFile.write( "brainslave" + str(stkNum) )

def fixFiles(stkNum):
    fixHostName(stkNum)
    fixHosts(stkNum)
    fixInterfaces(stkNum)

def syncDisks():
    print("Syncing Disks")
    os.system("sync")

def copyNtoN(srcNum, dstNum, brute = True):
    # Find the sticks
    srcPath = findStickByNumber(srcNum)
    dstPath = findStickByNumber(dstNum)


    # Do the copy
    print "Copying Stick.  This will take a while."
    print "Run to see progress"
    print "sudo watch kill -USR1 `pgrep -u root '^dd$'`"
    if brute:
        # Unmount Both Sticks, then DD them
        unmountDevice(srcPath)
        unmountDevice(dstPath)

        os.system( "dd if=%s of=%s bs=1048576 conv=notrunc,noerror" % (srcPath, dstPath) )

        # Prompt for reboot sticks
        promptForReplug()

    else:
        srcFilePath = devPathToFilePath(srcPath)
        dstFilePath = devPathToFilePath(dstPath)
        cmd = "rsync -ar --progress --delete %s/* %s/" % (srcFilePath, dstFilePath)
        print cmd
        os.system(cmd)


    # Update the hostname of the newly written one
    fixFiles(dstNum)

print( "Detecting Sticks" )
for pth in findClusterSticks():
    print "\t", pth, stickPathToNumber(pth)



# copyNtoN(1, 3, brute = False)

# fixFiles(0)
# fixFiles(1)
# fixFiles(3)
