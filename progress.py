#!/usr/bin/env python3

import argparse
import json
import csv
import os
import re
from pybadges import badge

# Script arguments.
parser = argparse.ArgumentParser(description="Computes current progress throughout the whole project.")
parser.add_argument("format", nargs="?", default="text", choices=["text", "verbose", "totalBadge", "gameBadge", "mainBadge", "endingBadge", "racingBadge", "audioBadge", "osBadge", "bytesToDecompile", "globalAsmFuncs", "m2cFuncs", "nonmatchingFuncs", "badge"])
parser.add_argument("-d", "--debug", dest='debug', action='store_true',
                    help="Adds additional debug information, outputs files parsed and score for each file")
parser.add_argument("-n", "--nonmatching", dest='nonmatching', action='store_true',
                    help="Tracks progress counting non matching functions")
args = parser.parse_args()

# Patterns for "NON_MATCHING" defines, one of those is used depending of the project.
NON_MATCHING_FUNC_PATTERN = r"#ifdef\s+NON_MATCHING.*?GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"
NON_MATCHING_PRAGMA_PATTERN = r"#ifdef\s+NON_MATCHING.*?#pragma\s+GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"

# Gets the assembly file around a NON_MATCHING define.
def GetNonMatchingFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(NON_MATCHING_FUNC_PATTERN, f.read(), re.DOTALL)
            functions += re.findall(NON_MATCHING_PRAGMA_PATTERN, f.read(), re.DOTALL)

    return functions

# Pattern for "MIPS_TO_C" define
MIPS_TO_C_FUNC_PATTERN = r"#ifdef\s+MIPS_TO_C.*?GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\).*?#endif"

# Gets the assembly file around a MIPS_TO_C define.
def CountMipsToCFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(MIPS_TO_C_FUNC_PATTERN, f.read(), re.DOTALL)

    return functions

# Pattern for "GLOBAL_ASM" macros
GLOBAL_ASM_FUNC_PATTERN = r"GLOBAL_ASM\s*\(\s*\"(.*?)\"\s*\)."

# Gets the assembly file defined in a GLOBAL_ASM macro.
def CountGlobalAsmFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            functions += re.findall(GLOBAL_ASM_FUNC_PATTERN, f.read(), re.DOTALL)

    return functions

# Regex to find a non static C function. Consists of 3 groups, comment documentation, function type and function name.
# We only take the function name here for simple needs.
C_FUNCTION_PATERN_REGEX = r'^(?<!static\s)(?:(\/[*][*!][*]*\n(?:[^/]*\n)+?\s*[*]\/\n)(?:\s*)*?)?(?:\s*UNUSED\s+)?([^\s]+)\s(?:\s|[*])*?([0-9A-Za-z_]+)\s*[(][^)]*[)]\s*{'

# Gets the function name and the C file which has it.
def GetCFunctions(files):
    functions = []

    for file in files:
        with open(file) as f:
            source_code = f.read()

        # Parse regex pattern
        matches = re.finditer(C_FUNCTION_PATERN_REGEX, source_code, re.MULTILINE)

        for match in matches:
            # Group 3 has functions names taken from the regex
            function_name = match.group(3)
            # Get the C file which has the function
            functions.append((file, function_name))

    return functions

# Reads the string of all lines in a file.
def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

# Gets the file on an extension in a path and it's subdirectories.
def GetFiles(path, ext):
    files = []

    for r, d, f in os.walk(path):
        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

# Gets the file on an extension in a path and it's subdirectories except the ones under a blacklist.
def GetFilesBlackList(path, ext, blacklist=[]):
    files = []

    for r, d, f in os.walk(path):
        d[:] = [dir for dir in d if dir not in blacklist]

        for file in f:
            if file.endswith(ext):
                files.append(os.path.join(r, file))

    return files

# Gets the file on an extension in a path and only it's subdirectories under a whilelist.
def GetFilesWhiteList(path, ext, whitelist=[]):
    files = []

    for r, d, f in os.walk(path):
        if r == path or any(subdir in r for subdir in whitelist):
            for file in f:
                if file.endswith(ext):
                    files.append(os.path.join(r, file))

    return files

# Segments have their own folder, used later for the following:
# Whilelist (C Functions list, includes src folder and only these subdirectories).
# Blacklist (For main segment, includes all folders in nonmatching except these subdirectories).
gameExclusiveDirs=["ending", "racing", "os", "audio"]

# Get non matching functions and count how many there is.
# If --nonmatching is set, then the score counts their progress by excluding their asm file.
nonMatchingFunctions = GetNonMatchingFunctions(GetFiles("src", ".c")) if args.nonmatching else []
TotalNonMatchingFunctions = len(GetNonMatchingFunctions(GetFiles("src", ".c")))

# Counts how many functions are under a MIPS_TO_C define and GLOBAL_ASM macro respectively.
TotalMipsToCFunctions = len(CountMipsToCFunctions(GetFiles("src", ".c")))
TotalGlobalAsmFunctions = len(CountGlobalAsmFunctions(GetFiles("src", ".c")))

# Counts how many functions are decompiled. To account for the uncompiled functions,
# we do a bit of subtraction from functions with NON_MATCHING and MIPS_TO_C defines
# and GLOBAL_ASM macros without the defines mentioned.
# If --nonmatching is set, then we exclude non matching count subsraction.
TotalCFunctions = len(GetCFunctions(GetFilesWhiteList("src", ".c", gameExclusiveDirs)))
TotalCFunctions -= TotalGlobalAsmFunctions + (TotalGlobalAsmFunctions - (TotalNonMatchingFunctions if args.nonmatching else 0) - TotalMipsToCFunctions)

# Gets the non matching size for each segment depending of the path set.
def GetNotMatchingSize(path):
    size = 0
    files = []

    # Asm non matching files for main segment.
    if (path == "main"):
        files = GetFilesBlackList("asm/non_matchings", ".s", gameExclusiveDirs)

    # Asm non matching files for ending segment.
    elif (path == "ending"):
        files = GetFiles("asm/non_matchings/ending", ".s")

    # Asm non matching files for racing segment.
    elif (path == "racing"):
        files = GetFiles("asm/non_matchings/racing", ".s")

    # Asm non matching files for libultra segment.
    elif (path == "os"):
        files = GetFiles("asm/non_matchings/os", ".s")

    # Asm non matching files for libultra segment.
    elif (path == "audio"):
        files = GetFiles("asm/non_matchings/audio", ".s")

    # Asm non matching files for a path specified, in a general case:
    # asm/non_matchings and it's subdirectories (for total segment).
    else:
        files = GetFiles(path, ".s")

    # Get the total size for the files specified above.
    size = GetAsmSize(files)

    return size

# Gets the assembly size of a file using a text pattern.
def GetAsmSize(path):
    size = 0
    asmFiles = path

    for asmFilePath in asmFiles:
        if asmFilePath not in nonMatchingFunctions:
            asmLines = ReadAllLines(asmFilePath)

            # Checks each line if it starts with a comment, for context:
            # split/splat programs generate assembly files with comments to 
            # provide additional information of the mips instruction such as:
            # /* Hex Location - Address location - Instruction in Hex */
            for asmLine in asmLines:
                # If there's a comment, assume there's an instruction there
                # as well, each mips instruction is 4 bytes long.
                if (asmLine.startswith("/*")):
                    size += 4

    return size

# Size for all object segments.
total = 0

# Sizes for each object segment.
segMain = 0
segEnding = 0
segRacing = 0
libultra = 0
audio = 0

# List of objects parsed for all segments (Debug).
obj_list_total = []

# List of objects parsed for each segment (Debug).
obj_list_game = []
obj_list_main = []
obj_list_ending = []
obj_list_racing = []
obj_list_libultra = []
obj_list_audio = []

# Read the linker map file, has correct results with a matching one.
mapFile = ReadAllLines("build/us/mk64.us.map")

# Check for every line in the map file.
for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    # Check if is a memory segment list by a pattern.
    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        # Checks for the ".text" line to get the function size of a file and
        # store the size for each segment by checking their respective folders
        # Ensure we parse files that have an actual size value.
        # Also list object files parsed (Debug).
        if (section == ".text") and size > 0:
            # This takes the size of every C file in the src directory
            # including subdirectories.
            if (objFile.startswith("build/us/src")):
                total += size
                if args.debug:
                    obj_list_total.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

            # This takes the size of every C file in the src directory
            # excluding subdirectories using an additional check.
            if (objFile.startswith("build/us/src") and objFile.count("/") == 3):
                segMain += size
                if args.debug:
                    obj_list_main.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

            # Object size for ending segment.
            if (objFile.startswith("build/us/src/ending")):
                segEnding += size
                if args.debug:
                    obj_list_ending.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

            # Object size for racing segment.
            if (objFile.startswith("build/us/src/racing")):
                segRacing += size
                if args.debug:
                    obj_list_racing.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

            # Object size for libultra segment.
            if (objFile.startswith("build/us/src/os")):
                libultra += size
                if args.debug:
                    obj_list_libultra.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

            # Object size for audio segment.
            if (objFile.startswith("build/us/src/audio")):
                audio += size
                if args.debug:
                    obj_list_audio.append("File: " + str(objFile.rstrip("\n")) + " - Size: " + str(size))

# List game object files (Main + Ending + Racing) (Debug).
obj_list_game = obj_list_main + obj_list_ending + obj_list_racing

# Asm size for all segments not decompiled.
nonMatchingTotal = GetNotMatchingSize("asm/non_matchings")

# Asm size for each segment not decompiled.
nonMatchingMain = GetNotMatchingSize("main")
nonMatchingEnding = GetNotMatchingSize("ending")
nonMatchingRacing = GetNotMatchingSize("racing")
nonMatchingLibultra = GetNotMatchingSize("os")
nonMatchingAudio = GetNotMatchingSize("audio")

# Set total size for each segment.
seg_main_size = segMain # 744112
seg_ending_size = segEnding # 20032
seg_racing_size = segRacing # 174224
libultra_size = libultra # 48848
audio_size = audio # 86912

# Set total size for game segment (Main + Ending + Racing).
game = segMain + segEnding + segRacing # 938368
game_code_size = seg_main_size + seg_ending_size + seg_racing_size # 938368

# Set total size for all segments.
total_code_size = game_code_size + libultra_size + audio_size # 1074128

# Set progress size depending of the size of non matching files for each segments.
segMain -= nonMatchingMain
segEnding -= nonMatchingEnding
segRacing -= nonMatchingRacing
libultra -= nonMatchingLibultra
audio -= nonMatchingAudio

# Set progress size for game segment (Main + Ending + Racing).
game -= nonMatchingMain + nonMatchingEnding + nonMatchingRacing

# Set progress size for all segments.
total -= nonMatchingTotal

# Set remaining size substacting total size with progress size.
decompilable = total
remaining_size = total_code_size - decompilable

# Set percentage progress for each segment.
segMainPct = 100 * segMain / seg_main_size
segEndingPct = 100 * segEnding / seg_ending_size
segRacingPct = 100 * segRacing / seg_racing_size
libultraPct = 100 * libultra / libultra_size
audioPct = 100 * audio / audio_size

# Set percentage progress for game segment (Main + Ending + Racing).
gamePct = 100 * game / game_code_size

# Set percentage progress for all segments.
totalPct = 100 * total / total_code_size

# Gets a string from a table index position.
def get_string_from_table(idx, table):
    if 0 <= idx < len(table):
        return table[idx]
    else:
        return "Number out of range"

# Finds the closest divisible of a number to get a result without decimals.
def find_closest_divisible(number, divisor):
    closest_smaller = number - (number % divisor)
    closest_larger = closest_smaller + divisor

    if abs(number - closest_smaller) < abs(number - closest_larger):
        return closest_smaller
    else:
        return closest_larger

# Centers a text around a specified filled character and how long it should be.
def center_text(text, total_width, fill_character=" "):
    empty_spaces = total_width - len(text)
    left_padding = empty_spaces // 2
    right_padding = empty_spaces - left_padding
    centered_text = fill_character * left_padding + text + fill_character * right_padding
    return centered_text

# Moves a base character around a filled character depending of the position set.
# Simulates a lap line progress like in the original game.
def move_character_from_bar(position, total_length, charbase="0", charfill="1"):
    if position < 0:
        position = 0
    elif position > total_length:
        position = total_length

    line = charfill * total_length
    line = list(line)
    line[position] = charbase

    return "".join(line)

# Checks the progress of a condition depending of where the total is.
# Tracks the progress which cup are we using a table set by a condition.
def check_table_cond(cond, total, table):
    if total > cond:
        sym = " (V)"
    elif total == cond:
        sym = " (~)"
    else:
        sym = " (X)"

    return str(table[cond]) + str(sym)

# Lists detailed progress for each badge set and the object files parsed on it (Debug).
def list_detailed_progress_and_files(pct, prog, size, objlist, charseg):
    print("Percentage progress: " + str(pct) + "%")
    print("Size progress: " + str(prog))
    print("Size total: " + str(size))
    print(str(charseg) + " object files: \n" + "\n".join(objlist))

# All the cups in the game in order.
mkCups = [
    "Mushroom Cup",
    "Flower Cup",
    "Star Cup",
    "Special Cup",
]

# All the courses in the game in order.
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

# Shows total segment progress.
if args.format  == 'totalBadge':
    if not args.debug:
        print(str(round(totalPct, 2))+"%")
    else:
        list_detailed_progress_and_files(totalPct, total, total_code_size, obj_list_total, "Total")
# Shows game segment progress (Main + Ending + Racing).
elif args.format == 'gameBadge':
    if not args.debug:
        print(str(round(gamePct, 2))+"%")
    else:
        list_detailed_progress_and_files(gamePct, game, game_code_size, obj_list_game, "Game")
# Shows main segment progress.
elif args.format == 'mainBadge':
    if not args.debug:
        print(str(round(segMainPct, 2))+"%")
    else:
        list_detailed_progress_and_files(segMainPct, segMain, seg_main_size, obj_list_main, "Main")
# Shows ending segment progress.
elif args.format == 'endingBadge':
    if not args.debug:
        print(str(round(segEndingPct, 2))+"%")
    else:
        list_detailed_progress_and_files(segEndingPct, segEnding, seg_ending_size, obj_list_ending, "Ending")
# Shows racing segment progress.
elif args.format == 'racingBadge':
    if not args.debug:
        print(str(round(segRacingPct, 2)) + "%")
    else:
        list_detailed_progress_and_files(segRacingPct, segRacing, seg_racing_size, obj_list_racing, "Racing")
# Shows libultra segment progress.
elif args.format == 'osBadge':
    if not args.debug:
        print(str(round(libultraPct, 2))+"%")
    else:
        list_detailed_progress_and_files(libultraPct, libultra, libultra_size, obj_list_libultra, "Libultra")
# Shows audio segment progress.
elif args.format == 'audioBadge':
    if not args.debug:
        print(str(round(audioPct, 2)) + "%")
    else:
        list_detailed_progress_and_files(audioPct, audio, audio_size, obj_list_audio, "Audio")
# Shows current bytes left to decompile out of the total.
elif args.format == 'bytesToDecompile':
    print(str(remaining_size)+" of "+str(total_code_size)+"\n")
# Shows how many GLOBAL_ASM functions are left.
elif args.format == 'globalAsmFuncs':
    print(str(TotalGlobalAsmFunctions))
# Shows how many MIPS_TO_C functions are left.
elif args.format == 'm2cFuncs':
    print(str(TotalMipsToCFunctions))
# Shows how many NON_MATCHING functions are left.
elif args.format == 'nonmatchingFuncs':
    print(str(TotalNonMatchingFunctions))
# Shows decompilation progress output in a fancy way.
elif args.format == 'text':
    outputLength = 67 # Horizontal length of the text in the terminal output
    # "Magic" number is 48, which is 3 laps * 4 courses * 3 cups
    bytesPerTotalLaps = total_code_size // 47 # Total size // (Magic number - 1)
    srcDivNear = find_closest_divisible(total, 49) # Correct division by diving closest divisible with (Magic number + 1)
    lapTotalCounts = int(srcDivNear / bytesPerTotalLaps) # Game progress count, sets where are we in a simulated game, can be between 0 - 47
    curLapProgress = int(((srcDivNear % bytesPerTotalLaps) * (outputLength - 1)) / (bytesPerTotalLaps)) # Progress of a lap depending of the output length
    curLapCount = int((lapTotalCounts % 3) + 1) # Lap count, can be between 1 - 3 (3 laps total)
    curCourseCount = int(lapTotalCounts / 3) # Course count, can be between 0 - 15 (16 courses total)
    curCupCount = int((lapTotalCounts / 12) % 12) # Cup count, can be between 0 - 3 (4 cups total)

    # Print current decompilation progress.
    print(str(center_text((str(" Non Matching progress mode ") if args.nonmatching else str("")), outputLength, "=")))
    print(str(center_text(" All Cups (Decompilation) ", outputLength)))
    print(str(center_text(" " + str(round(totalPct, 2))+"% Complete ", outputLength, "-")))
    print(str(center_text(" # Decompiled functions: " + str(TotalCFunctions) + " ", outputLength)))
    print(str(center_text(" # GLOBAL_ASM remaining: " + str(TotalGlobalAsmFunctions) + " ", outputLength)))
    print(str(center_text(" # NON_MATCHING remaining: " + str(TotalNonMatchingFunctions) + " ", outputLength)))
    print(str(center_text(" # MIPS_TO_C remaining: " + str(TotalMipsToCFunctions) + " ", outputLength)))
    print(str(center_text(" Game Status ", outputLength, "-")))

    # Simlautes an All Cups race, prints how much the player has been progressing.
    if TotalGlobalAsmFunctions > 0:
        print(str(center_text(check_table_cond(0, curCupCount, mkCups) + " - " + check_table_cond(1, curCupCount, mkCups), outputLength)))
        print(str(center_text(check_table_cond(2, curCupCount, mkCups) + " - " + check_table_cond(3, curCupCount, mkCups), outputLength)))
        print(str(center_text(" Lap Progress Bar and Race Status ", outputLength, "-")))
        print(str(move_character_from_bar(curLapProgress, outputLength, "O", "-")))
        print(str(center_text("We are in " + str(get_string_from_table(curCupCount, mkCups)) + " racing at " +  str(get_string_from_table(curCourseCount, mkCourses)) + " (Lap " + str(curLapCount) + "/3)", outputLength)))
    else:
        print(str(center_text("Mushroom Cup (V) - Flower Cup (V)", outputLength)))
        print(str(center_text("Star Cup (V) - Special Cup (V)", outputLength)))
        print(str(center_text("We finished All Cups! We got all 4 Gold Cups!", outputLength)))

    print(str(center_text((str(" Non Matching progress mode ") if args.nonmatching else str("")), outputLength, "=")))
# Shows decompilation progress output in verbose mode.
elif args.format == 'verbose':
    adjective = "decompiled" if args.nonmatching else "matched"

    print("Total decompilable bytes remaining: " + str(remaining_size)+ " out of " + str(total_code_size)+"\n")
    print(str(total) + "/" + str(total_code_size) + " bytes " + adjective + " in total code " + str(totalPct) + "%")
    print(str(game) + "/" + str(game_code_size) + " bytes " + adjective + " in game code " + str(gamePct) + "%\n")
    print(str(TotalCFunctions) + " " + adjective + " functions - " + str(TotalGlobalAsmFunctions)+" GLOBAL_ASM functions remaining."+"")
    print(str(TotalNonMatchingFunctions)+" NON_MATCHING functions - " + str(TotalMipsToCFunctions) + " MIPS_TO_C functions." +"\n")
    print(str(segMain) + "/" + str(seg_main_size) + " bytes " + adjective + " in segMain " + str(segMainPct) + "%")
    print(str(segEnding) + "/" + str(seg_ending_size) + " bytes " + adjective + " in segEnding " + str(segEndingPct) + "%")
    print(str(segRacing) + "/" + str(seg_racing_size) + " bytes " + adjective + " in segRacing " + str(segRacingPct) + "%")
    print(str(audio) + "/" + str(audio_size) + " bytes " + adjective + " in audio " + str(audioPct) + "%")
    print(str(libultra) + "/" + str(libultra_size) + " bytes " + adjective + " in libultra " + str(libultraPct) + "%\n")

elif args.format == 'badge':
    adjective = "decompiled" if args.nonmatching else "matched"

    badge_size_left = badge(left_text="Size left", right_text=str(remaining_size), right_color="blue")
    with open("docs/images/size_left.svg", "w") as f:
        f.write(badge_size_left)
    badge_total_size = badge(left_text="Total size", right_text=str(total_code_size), right_color="blue")
    with open("docs/images/total_size.svg", "w") as f:
        f.write(badge_total_size)
    badge_total_pct = badge(left_text="Total progress", right_text=str(round(totalPct, 2))+"%", right_color="green")
    with open("docs/images/total_progress.svg", "w") as f:
        f.write(badge_total_pct)
    badge_game_pct = badge(left_text="Game progress", right_text=str(round(gamePct, 2))+"%", right_color="green")
    with open("docs/images/game_progress.svg", "w") as f:
        f.write(badge_game_pct)
    badge_asm_funcs = badge(left_text="ASM functions", right_text=str(TotalGlobalAsmFunctions), right_color="blue")
    with open("docs/images/asm_funcs.svg", "w") as f:
        f.write(badge_asm_funcs)
    badge_nonmatching_funcs = badge(left_text="NON_MATCHING functions", right_text=str(TotalNonMatchingFunctions), right_color="blue")
    with open("docs/images/nonmatching_funcs.svg", "w") as f:
        f.write(badge_nonmatching_funcs)
    badge_m2c_funcs = badge(left_text="MIPS_TO_C functions", right_text=str(TotalMipsToCFunctions), right_color="blue")
    with open("docs/images/m2c_funcs.svg", "w") as f:
        f.write(badge_m2c_funcs)
    badge_seg_main = badge(left_text="Main progress", right_text=str(round(segMainPct, 2))+"%", right_color="green")
    with open("docs/images/seg_main_progress.svg", "w") as f:
        f.write(badge_seg_main)
    badge_seg_ending = badge(left_text="Ending progress", right_text=str(round(segEndingPct, 2))+"%", right_color="green")
    with open("docs/images/seg_ending_progress.svg", "w") as f:
        f.write(badge_seg_ending)
    badge_seg_racing = badge(left_text="Racing progress", right_text=str(round(segRacingPct, 2))+"%", right_color="green")
    with open("docs/images/seg_racing_progress.svg", "w") as f:
        f.write(badge_seg_racing)
    badge_audio = badge(left_text="Audio progress", right_text=str(round(audioPct, 2))+"%", right_color="green")
    with open("docs/images/audio_progress.svg", "w") as f:
        f.write(badge_audio)
    badge_libultra = badge(left_text="Libultra progress", right_text=str(round(libultraPct, 2))+"%", right_color="green")
    with open("docs/images/libultra_progress.svg", "w") as f:
        f.write(badge_libultra)

else:
    print("Unknown format argument: " + args.format)
