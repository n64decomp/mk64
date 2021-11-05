#!/usr/bin/env python3

import argparse
import json
import csv
#import git
import os
import re

parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
parser.add_argument("format", nargs="?", default="text", choices=["text", "csv", "shield-json"])
parser.add_argument("-m", "--matching", dest='matching', action='store_true',
                    help="Output matching progress instead of decompilation progress")
args = parser.parse_args()

NON_MATCHING_PATTERN = r"#ifdef\s+NON_MATCHING.*?#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read(), re.DOTALL)

    return functions

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path, ext):
    files = []
    
    for r, d, f in os.walk(path):
        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if not args.matching else []

mainSegFiles2 = [
    "asm/non_matchings/main",          "asm/non_matchings/code_800029B0",
    "asm/non_matchings/profiler",      "asm/non_matchings/crash_screen",
    "asm/non_matchings/code_80004740", "asm/non_matchings/staff_ghosts",
    "asm/non_matchings/code_80005FD0", "asm/non_matchings/code_80005FD0",
    "asm/non_matchings/code_8001C4D0", "asm/non_matchings/code_8001F980",
    "asm/non_matchings/code_80027040", "asm/non_matchings/code_80027D00",
    "asm/non_matchings/code_800393C0", "asm/non_matchings/code_8003DC40",
    "asm/non_matchings/gbiMacro",      "asm/non_matchings/code_80040E50",
    "asm/non_matchings/code_800431B0", "asm/non_matchings/code_80057C60",
    "asm/non_matchings/code_8006E9C0", "asm/non_matchings/code_80071F00",
    "asm/non_matchings/code_80086E70", "asm/non_matchings/code_8008C1D0",
    "asm/non_matchings/code_80091750", "asm/non_matchings/code_800AF9B0"
    ]
seg2Files2 = [
    "asm/non_matchings/code_8028DF00", "asm/non_matchings/code_80290C20",
    "asm/non_matchings/code_80296A50", "asm/non_matchings/code_802A3730",
    "asm/non_matchings/memory", "asm/non_matchings/code_802B0210",
    "asm/non_matchings/math_util"
]
seg3Files2 = [
    "asm/non_matchings/code_80280000", "asm/non_matchings/code_80280650",
    "asm/non_matchings/code_80281610", "asm/non_matchings/code_80281780",
    "asm/non_matchings/code_80281C40", "asm/non_matchings/code_80281FA0"
]
audioFiles2 = [
    "asm/non_matchings/audio"
]

def GetNonMatchingSize(path):
    size = 0

    if (path == "main"):
        for file in mainSegFiles2: 
            size += getData(file)

    elif (path == "seg2"):
        for file in seg2Files2: 
            size += getData(file)

    elif (path == "seg3"):
        for file in seg3Files2: 
            size += getData(file)

    elif (path == "os"):
            size = getData("asm/os/func_800CE720.s")

    elif (path == "audio"):
        for file in audioFiles2: 
            size += getData(file)

    else: size = getData("asm/non_matchings")


    return size

def getData(path):
    size = 0


    asmFiles = GetFiles(path, ".s")


    for asmFilePath in asmFiles:
    #if path == asmFilePath.startswith("audio"):
    #    continue
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.startswith("/*")):
                    size += 4

    return size



mapFile = ReadAllLines("build/us/mk64.us.map")
src = 0
mainSeg = 0
seg2 = 0
seg3 = 0
audio = 0
libultra = 0

mainSegFiles = [
    "build/us/src/main",          "build/us/src/code_800029B0",
    "build/us/src/profiler",      "build/us/src/crash_screen",
    "build/us/src/code_80004740", "build/us/src/staff_ghosts",
    "build/us/src/code_80005FD0", "build/us/src/code_80005FD0",
    "build/us/src/code_8001C4D0", "build/us/src/code_8001F980",
    "build/us/src/code_80027040", "build/us/src/code_80027D00",
    "build/us/src/code_800393C0", "build/us/src/code_8003DC40",
    "build/us/src/gbiMacro",      "build/us/src/code_80040E50",
    "build/us/src/code_800431B0", "build/us/src/code_80057C60",
    "build/us/src/code_8006E9C0", "build/us/src/code_80071F00",
    "build/us/src/code_80086E70", "build/us/src/code_8008C1D0",
    "build/us/src/code_80091750", "build/us/src/code_800AF9B0"
    ]
seg2Files = [
    "build/us/src/code_8028DF00", "build/us/src/code_80290C20",
    "build/us/src/code_80296A50", "build/us/src/code_802A3730",
    "build/us/src/memory", "build/us/src/code_802B0210",
    "build/us/src/math_util"
]
seg3Files = [
    "build/us/src/code_80280000", "build/us/src/code_80280650",
    "build/us/src/code_80281610", "build/us/src/code_80281780",
    "build/us/src/code_80281C40", "build/us/src/code_80281FA0"
]
segAudioFiles = [
    "build/us/src/synthesis"
]

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/us/src")):
                src += size
            
            if (objFile.startswith(tuple(mainSegFiles))):
                print(size)
                mainSeg += size

            if (objFile.startswith(tuple(seg2Files))):
                seg2 += size

            if (objFile.startswith(tuple(seg3Files))):
                seg3 += size

            if (objFile.startswith("build/us/src/os")):
                libultra += size

            if (objFile.startswith(tuple(segAudioFiles))):
                audio += size

nonMatchingASM = GetNonMatchingSize("asm/non_matchings")
nonMatchingMain = GetNonMatchingSize("main")
nonMatchingSeg2 = GetNonMatchingSize("seg2")
nonMatchingSeg3 = GetNonMatchingSize("seg3")
nonMatchingLibultra = GetNonMatchingSize("os")
nonMatchingASMAudio = GetNonMatchingSize("audio")

decompilable = src + audio + 448 # 448 = OS func_800CE720

src -= nonMatchingASM
print("main")
print(mainSeg)
print(nonMatchingMain)
mainSeg -= nonMatchingMain

seg2 -= nonMatchingSeg2
seg3 -= nonMatchingSeg3
audio -= nonMatchingASMAudio
libultra -= nonMatchingLibultra


mainSeg_size = 831024
seg2_size = 174224
seg3_size = 20032
mk64Code_size = 1025280
libultra_size = 53248 - 2112 # total - handwritten
audio_size = 86912
text_size = (mk64Code_size + libultra_size + audio_size) - decompilable

srcPct = 100 * src / mk64Code_size
libultraPct = 100 * libultra / libultra_size
audioPct = 100 * audio / audio_size
mainSegPct = 100 * mainSeg / mainSeg_size
seg2Pct = 100 * seg2 / seg2_size
seg3Pct = 100 * seg3 / seg3_size

bytesPerHeartPiece = text_size / 80

#if args.format == 'csv':
#    version = 1
#    git_object = git.Repo().head.object
#    timestamp = str(git_object.committed_date)
#    git_hash = git_object.hexsha
#    csv_list = [str(version), timestamp, git_hash, str(code), str(codeSize), str(boot), str(bootSize), str(ovl), str(ovlSize), str(src), str(nonMatchingASM), str(len(nonMatchingFunctions))]
#    print(",".join(csv_list))
#elif args.format == 'shield-json':
#    # https://shields.io/endpoint
#    print(json.dumps({
#        "schemaVersion": 1,
#        "label": "progress",
#        "message": f"{srcPct:.3g}%",
#        "color": 'yellow',
#    }))
if args.format == 'text':
    adjective = "decompiled" if not args.matching else "matched"

    print(str(text_size) + " total bytes of decompilable code\n")
    print(str(src) + " bytes " + adjective + " in game code " + str(srcPct) + "%\n")
    print(str(audio) + "/" + str(audio_size) + " bytes " + adjective + " in audio " + str(audioPct) + "%\n")
    print(str(libultra) + "/" + str(libultra_size) + " bytes " + adjective + " in libultra " + str(libultraPct) + "%\n")
    print(str(mainSeg) + "/" + str(mainSeg_size) + " bytes " + adjective + " in mainSeg " + str(mainSegPct) + "%\n")
    print(str(seg2) + "/" + str(seg2_size) + " bytes " + adjective + " in seg2 " + str(seg2Pct) + "%\n")
    print(str(seg3) + "/" + str(seg3_size) + " bytes " + adjective + " in seg3 " + str(seg3Pct) + "%\n")
    print("------------------------------------\n")

    heartPieces = int(src / bytesPerHeartPiece)
    rupees = int(((src % bytesPerHeartPiece) * 100) / bytesPerHeartPiece)

    if (rupees > 0):
        print("You have " + str(heartPieces) + "/80 GP Wins and " + str(rupees) + " bronze cup(s).\n")
    else:
        print("You have " + str(heartPieces) + "/80 GP Wins.\n")
else:
    print("Unknown format argument: " + args.format)
