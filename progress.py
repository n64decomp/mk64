#!/usr/bin/env python3

import argparse
import json
import csv
import os
import re

parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
parser.add_argument("format", nargs="?", default="text", choices=["text", "verbose", "totalBadge", "gameBadge", "mainBadge", "endingBadge", "racingBadge", "audioBadge", "osBadge", "bytesToDecompile", "globalAsmFuncs", "m2cFuncs", "nonmatchingFuncs"])
args = parser.parse_args()

NON_MATCHING_PATTERN = r"#ifdef\s+NON_MATCHING.*?#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
MIPS_TO_C_FUNC_COUNT_PATTERN = r"#ifdef\s+MIPS_TO_C.*?GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
NON_MATCHING_FUNC_COUNT_PATTERN = r"#ifdef\s+NON_MATCHING.*?GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
GLOBAL_ASM_FUNC_COUNT_PATTERN = r"GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\)."

def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_PATTERN, f.read(), re.DOTALL)

    return functions

def CountMipsToCFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(MIPS_TO_C_FUNC_COUNT_PATTERN, f.read(), re.DOTALL)

    return functions
def CountNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_FUNC_COUNT_PATTERN, f.read(), re.DOTALL)

    return functions
def CountGlobalAsmFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(GLOBAL_ASM_FUNC_COUNT_PATTERN, f.read(), re.DOTALL)

    return functions

C_FUNCTION_PATERN_REGEX = r'^(?<!static\s)(?:(\/[*][*!][*]*\n(?:[^/]*\n)+?\s*[*]\/\n)(?:\s*)*?)?(?:\s*UNUSED\s+)?([^\s]+)\s(?:\s|[*])*?([0-9A-Za-z_]+)\s*[(][^)]*[)]\s*{'

def GetCFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            source_code = f.read()

        matches = re.finditer(C_FUNCTION_PATERN_REGEX, source_code, re.MULTILINE)

        for match in matches:
            function_name = match.group(3)
            functions.append((file, function_name))

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

def GetFilesBlackList(path, ext, blacklist=[]):
    files = []

    for r, d, f in os.walk(path):
        d[:] = [dir for dir in d if dir not in blacklist]

        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

def GetFilesWhiteList(path, ext, whitelist=[]):
    files = []

    for root, dirs, filenames in os.walk(path):
        if root == path or any(subdir in root for subdir in whitelist):
            for filename in filenames:
                if filename.endswith(ext):
                    files.append(os.path.join(root, filename))

    return files

gameExclusiveDirs=["audio", "os", "ending", "racing"]

nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c"))
TotalMipsToCFunctions = len(CountMipsToCFunctions(GetFiles("src", ".c")))
TotalNonMatchingFunctions = len(CountNonMatchingFunctions(GetFiles("src", ".c")))
TotalGlobalAsmFunctions = len(CountGlobalAsmFunctions(GetFiles("src", ".c")))
TotalCFunctions = len(GetCFunctions(GetFilesWhiteList("src", ".c", gameExclusiveDirs)))

TotalCFunctions -= TotalGlobalAsmFunctions + (TotalGlobalAsmFunctions - TotalNonMatchingFunctions - TotalMipsToCFunctions)

def GetNonMatchingSize(path):
    size = 0

    if (path == "main"):
        size += getDataBlackList("asm/non_matchings", gameExclusiveDirs)

    elif (path == "racing"):
        size += getData("asm/non_matchings/racing")

    elif (path == "ending"):
        size += getData("asm/non_matchings/ending")

    elif (path == "os"):
        size += getData("asm/non_matchings/os")

    elif (path == "audio"):
        size += getData("asm/non_matchings/audio")

    else: size = getData(path)

    return size

def getData(path):
    size = 0

    asmFiles = GetFiles(path, ".s")

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.startswith("/*")):
                    size += 4

    return size

def getDataBlackList(path, bl=[]):
    size = 0

    asmFiles = GetFilesBlackList(path, ".s", bl)

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            for asmLine in asmLines:
                if (asmLine.startswith("/*")):
                    size += 4

    return size

mapFile = ReadAllLines("build/us/mk64.us.map")
src = 0
segMain = 0
segEnding = 0
segRacing = 0
audio = 0
libultra = 0

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/us/src")):
                src += size

            if (objFile.startswith("build/us/src") and objFile.count("/") == 3):
                segMain += size

            if (objFile.startswith("build/us/src/ending")):
                segEnding += size

            if (objFile.startswith("build/us/src/racing")):
                segRacing += size

            if (objFile.startswith("build/us/src/os")):
                libultra += size

            if (objFile.startswith("build/us/src/audio")):
                audio += size

nonMatchingASM = GetNonMatchingSize("asm/non_matchings")

nonMatchingMain = GetNonMatchingSize("main")
nonMatchingEnding = GetNonMatchingSize("ending")
nonMatchingRacing = GetNonMatchingSize("racing")
nonMatchingLibultra = GetNonMatchingSize("os")
nonMatchingAudio = GetNonMatchingSize("audio")

game = segMain + segEnding + segRacing

segMain -= nonMatchingMain
segEnding -= nonMatchingEnding
segRacing -= nonMatchingRacing
audio -= nonMatchingAudio
libultra -= nonMatchingLibultra

src -= nonMatchingASM
game -= nonMatchingMain + nonMatchingEnding + nonMatchingRacing

decompilable = src

seg_main_size = 744112
seg_ending_size = 20032
seg_racing_size = 174224

libultra_size = 48848
audio_size = 86912

game_code_size = seg_main_size + seg_ending_size + seg_racing_size # 938368
total_code_size = seg_main_size + seg_ending_size + seg_racing_size + libultra_size + audio_size # 1074128

remaining_size = total_code_size - decompilable

segMainPct = 100 * segMain / seg_main_size
segEndingPct = 100 * segEnding / seg_ending_size
segRacingPct = 100 * segRacing / seg_racing_size

libultraPct = 100 * libultra / libultra_size
audioPct = 100 * audio / audio_size

gamePct = 100 * game / game_code_size
srcPct = 100 * src / total_code_size

def get_string_from_table(num, table):
    if 0 <= num < len(table):
        return table[num]
    else:
        return "Number out of range"

def find_closest_divisible(number, divisor):
    closest_smaller = number - (number % divisor)
    closest_larger = closest_smaller + divisor

    if abs(number - closest_smaller) < abs(number - closest_larger):
        return closest_smaller
    else:
        return closest_larger

def center_text(text, total_width, fill_character=" "):
    empty_spaces = total_width - len(text)
    left_padding = empty_spaces // 2
    right_padding = empty_spaces - left_padding
    centered_text = fill_character * left_padding + text + fill_character * right_padding
    return centered_text

def move_character_from_bar(position, total_length, charbase="0", charfill="1"):
    if position < 0:
        position = 0
    elif position > total_length:
        position = total_length

    line = charfill * total_length
    line = list(line)
    line[position] = charbase

    return "".join(line)

def check_table_cond(cond, total, table):
    if total > cond:
        sym = " (V)"
    elif total == cond:
        sym = " (~)"
    else:
        sym = " (X)"

    return str(table[cond]) + str(sym)

mkCups = [
    "Mushroom Cup",
    "Flower Cup",
    "Star Cup",
    "Special Cup",
]

mkCourses = [
    "Luigi Raceway",
    "Moo Moo Farm",
    "Koopa Troopa Beach",
    "Kalimari Desert",
    "Toad's Turnpike",
    "Frappe Snowland",
    "Choco Mountain",
    "Mario Raceway",
    "Wario Stadium",
    "Sherbet Land",
    "Royal Raceway",
    "Bowser's Castle",
    "D.K.'s Jungle Parkway",
    "Yoshi Valley",
    "Banshee Boardwalk",
    "Rainbow Road",
]

if args.format  == 'totalBadge':
    print(str(round(srcPct, 2))+"%")
elif args.format == 'gameBadge':
    print(str(round(gamePct, 2))+"%")
elif args.format == 'mainBadge':
    print(str(round(segMainPct, 2))+"%")
elif args.format == 'endingBadge':
    print(str(round(segEndingPct, 2))+"%")
elif args.format == 'racingBadge':
    print(str(round(segRacingPct, 2))+"%")
elif args.format == 'audioBadge':
    print(str(round(audioPct, 2))+"%")
elif args.format == 'osBadge':
    print(str(round(libultraPct, 2))+"%")
elif args.format == 'bytesToDecompile':
    print(str(remaining_size)+" of "+str(total_code_size)+"\n")
elif args.format == 'globalAsmFuncs':
    print(str(TotalGlobalAsmFunctions))
elif args.format == 'm2cFuncs':
    print(str(TotalMipsToCFunctions))
elif args.format == 'nonmatchingFuncs':
    print(str(TotalNonMatchingFunctions))
elif args.format == 'text':
    bytesPerTotalLaps = total_code_size // 47
    srcDivNear = find_closest_divisible(src, 49)
    lapTotalCounts = int(srcDivNear / bytesPerTotalLaps)
    curLapProgress = int(((srcDivNear % bytesPerTotalLaps) * 66) / (bytesPerTotalLaps))
    curLapCount = int((lapTotalCounts % 3) + 1)
    curCourseCount = int(lapTotalCounts / 3)
    curCupCount = int((lapTotalCounts / 12) % 12)

    print(str(center_text("", 67, "=")))
    print(str(center_text(" All Cups (Decompilation) ", 67)))
    print(str(center_text(" " + str(round(srcPct, 2))+"% Complete ", 67, "-")))
    print(str(center_text(" # Decompiled functions: " + str(TotalCFunctions) + " ", 67)))
    print(str(center_text(" # GLOBAL_ASM remaining: " + str(TotalGlobalAsmFunctions) + " ", 67)))
    print(str(center_text(" # NON_MATCHING remaining: " + str(TotalNonMatchingFunctions) + " ", 67)))
    print(str(center_text(" # MIPS_TO_C remaining: " + str(TotalMipsToCFunctions) + " ", 67)))
    print(str(center_text(" Game Status ", 67, "-")))

    if TotalGlobalAsmFunctions > 0:
        print(str(center_text(check_table_cond(0, curCupCount, mkCups) + " - " + check_table_cond(1, curCupCount, mkCups), 67)))
        print(str(center_text(check_table_cond(2, curCupCount, mkCups) + " - " + check_table_cond(3, curCupCount, mkCups), 67)))
        print(str(center_text(" Lap Progress Bar and Race Status", 67, "-")))
        print(str(move_character_from_bar(curLapProgress, 67, "O", "-")))
        print(str(center_text("We are in " + str(get_string_from_table(curCupCount, mkCups)) + " racing at " +  str(get_string_from_table(curCourseCount, mkCourses)) + " (Lap " + str(curLapCount) + "/3)", 67)))
    else:
        print(str(center_text("Mushroom Cup (V) - Flower Cup (V)", 67)))
        print(str(center_text("Star Cup (V) - Special Cup (V)", 67)))
        print(str(center_text("We finished All Cups! We got all 4 Gold Cups!", 67)))

    print(str(center_text("", 67, "=")))
elif args.format == 'verbose':
    print("Total decompilable bytes remaining: "+str(remaining_size)+" out of "+str(total_code_size)+"\n")
    print(str(src) + "/" + str(total_code_size) + " bytes " + "decompiled" + " in total code " + str(srcPct) + "%\n")
    print(str(TotalCFunctions) + " decompiled functions - " +str(TotalGlobalAsmFunctions)+" GLOBAL_ASM functions remaining."+"\n")
    print(str(TotalNonMatchingFunctions)+" NON_MATCHING functions - " + str(TotalMipsToCFunctions) + " MIPS_TO_C functions." +"\n")
    print("------------------------------------\n")
    print(str(segMain) + "/" + str(seg_main_size) + " bytes " + "decompiled" + " in segMain " + str(segMainPct) + "%\n")
    print(str(segEnding) + "/" + str(seg_ending_size) + " bytes " + "decompiled" + " in segEnding " + str(segEndingPct) + "%\n")
    print(str(segRacing) + "/" + str(seg_racing_size) + " bytes " + "decompiled" + " in segRacing " + str(segRacingPct) + "%\n")
    print(str(game) + "/" + str(game_code_size) + " bytes " + "decompiled" + " in game code " + str(gamePct) + "%\n")
    print("------------------------------------\n")
    print(str(audio) + "/" + str(audio_size) + " bytes " + "decompiled" + " in audio " + str(audioPct) + "%\n")
    print(str(libultra) + "/" + str(libultra_size) + " bytes " + "decompiled" + " in libultra " + str(libultraPct) + "%\n")
else:
    print("Unknown format argument: " + args.format)
