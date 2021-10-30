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

def GetNonMatchingSize(path):
    size = 0

    asmFiles = GetFiles(path, ".s")

    for asmFilePath in asmFiles:
        if path == "asm" and not asmFilePath.startswith("code_"):
            continue
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

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/us/src") and not objFile.startswith("build/us/src/synthesis")):
                src += size
            
            if (objFile.startswith("build/us/src") and (objFile.startswith("build/us/src/main") or objFile.startswith("build/us/src/code_800029B0") or objFile.startswith("build/us/src/profiler") or objFile.startswith("build/us/src/crash_screen") or objFile.startswith("build/us/src/staff_ghosts") or objFile.startswith("build/us/src/code_80005FD0") or objFile.startswith("build/us/src/code_80027040") or objFile.startswith("build/us/src/code_800393C0") or objFile.startswith("build/us/src/code_8003DC40") or objFile.startswith("build/us/src/gbiMacro") or objFile.startswith("build/us/src/code_80040E50") or objFile.startswith("build/us/src/code_800431B0") or objFile.startswith("build/us/src/code_80057C60") or objFile.startswith("build/us/src/code_8006E9C0") or objFile.startswith("build/us/src/code_80071F00") or objFile.startswith("build/us/src/code_80086E70") or objFile.startswith("build/us/src/code_8008C1D0") or objFile.startswith("build/us/src/code_80091750") or objFile.startswith("build/us/src/code_800AF9B0"))):
                mainSeg += size

            if (objFile.startswith("build/us/src") and (objFile.startswith("build/us/src/code_8028DF00") or objFile.startswith("build/us/src/code_80296A50") or objFile.startswith("build/us/src/memory") or objFile.startswith("build/us/src/math_util"))):
                seg2 += size

            if (objFile.startswith("build/us/src") and (objFile.startswith("build/us/src/code_80280000") or objFile.startswith("build/us/src/code_80281610") or objFile.startswith("build/us/src/code_80281780") or objFile.startswith("build/us/src/code_80281C40"))):
                seg3 += size

            if (objFile.startswith("build/us/src/os")):
                libultra += size
            if (objFile.startswith("build/us/src/audio") or objFile.startswith("build/us/src/synthesis")):
                audio += size

nonMatchingA = GetNonMatchingSize("asm")
nonMatchingASM = GetNonMatchingSize("asm/non_matchings")
nonMatchingASMAudio = GetNonMatchingSize("asm/non_matchings/audio")
nonMatchingASM1 = GetNonMatchingSize("asm/non_matchings/code_8008C1D0")
nonMatchingASM2 = GetNonMatchingSize("asm/non_matchings/code_8028DF00")
nonMatchingASM3 = GetNonMatchingSize("asm/non_matchings/code_80004EF0")
nonMatchingASM4 = GetNonMatchingSize("asm/non_matchings/code_80296A50")
nonMatchingASM5 = GetNonMatchingSize("asm/non_matchings/code_800393C0")
nonMatchingASM6 = GetNonMatchingSize("asm/non_matchings/code_80027040")
nonMatchingASM9 = GetNonMatchingSize("asm/non_matchings/crash_screen")
nonMatchingASM10 = GetNonMatchingSize("asm/non_matchings/math_util")
nonMatchingLibultra = 0 #GetNonMatchingSize("asm/os")
decompilable = src + audio + libultra
src -= nonMatchingASM + nonMatchingASM1 + nonMatchingASM1 + nonMatchingASM2 + nonMatchingASM3 + nonMatchingASM4 + nonMatchingASM5 + nonMatchingASM6 + nonMatchingASM9 + nonMatchingASM10
audio -= nonMatchingASMAudio
libultra -= nonMatchingLibultra
mainSeg -= nonMatchingASM1 + nonMatchingASM5 + nonMatchingASM6 + nonMatchingASM9
seg2 -= nonMatchingASM2 + nonMatchingASM4 + nonMatchingASM10 + 34312 # memory.s


mainSeg_size = 831024
seg2_size = 174224
seg3_size = 20032
mk64Code_size = 1025280
libultra_size = 53248
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
