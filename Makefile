# Makefile to rebuild MK64 split image

### Default target ###

default: all

### Build Options ###

# These options can either be changed by modifying the makefile, or
# by building with 'make SETTING=value'. 'make clean' may be required.

# Version of the game to build
VERSION ?= us
# If COMPARE is 1, check the output sha1sum when building 'all'
COMPARE ?= 1

ifeq ($(VERSION),us)
  VERSION_CFLAGS := -DVERSION_US
  VERSION_ASFLAGS := --defsym VERSION_US=1
  TARGET := mk64.us
endif

### Utility Functions ###
# Returns the path to the command $(1) if exists. Otherwise returns an empty string.
find-command = $(shell which $(1) 2>/dev/null)

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR_BASE := build
BUILD_DIR := $(BUILD_DIR_BASE)/$(VERSION)

# Directories containing source files
INCLUDE_DIRS := include
SRC_DIRS := src src/audio src/os src/os/math courses
ASM_DIRS := asm asm/audio asm/os asm/os/non_matchings data data/sound_data
COURSE_DIRS :=        \
	courses/mushroom_cup/luigi_raceway courses/mushroom_cup/koopa_beach        \
	courses/mushroom_cup/moo_moo_farm courses/mushroom_cup/kalimari_desert courses/flower_cup/toads_turnpike courses/flower_cup/frappe_snowland                     \
	courses/flower_cup/choco_mountain courses/flower_cup/mario_raceway courses/star_cup/wario_stadium courses/star_cup/sherbet_land courses/star_cup/royal_raceway  \
	courses/star_cup/bowsers_castle courses/special_cup/dks_jungle_parkway courses/special_cup/yoshi_valley courses/special_cup/banshee_boardwalk                   \
	courses/special_cup/rainbow_road courses/battle/big_donut courses/battle/block_fort courses/battle/double_deck courses/battle/skyscraper

TEXTURES_DIR = textures

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(COURSE_DIRS) $(INCLUDE_DIRS) $(ASM_DIRS) $(ALL_KARTS_DIRS) $(TEXTURES_DIR)/raw $(TEXTURES_DIR)/standalone $(TEXTURES_DIR)/startup_logo $(TEXTURES_DIR)/crash_screen $(TEXTURES_DIR)/trophy)

################### Universal Dependencies ###################

# (This is a bit hacky, but a lot of rules implicitly depend
# on tools and assets, and we use directory globs further down
# in the makefile that we want should cover assets.)

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),distclean)

# Make sure assets exist
NOEXTRACT ?= 0
ifeq ($(NOEXTRACT),0)
DUMMY != ./extract_assets.py $(VERSION) >&2 || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Failed to extract assets)
endif
endif

# Make tools if out of date
DUMMY != make -s -C tools >&2 || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Failed to build tools)
endif

endif
endif

LD_SCRIPT = mk64.ld
MIO0_DIR = bin

# Files with GLOBAL_ASM blocks
GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/*.c)
GLOBAL_ASM_AUDIO_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/audio/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))
GLOBAL_ASM_AUDIO_O_FILES = $(foreach file,$(GLOBAL_ASM_AUDIO_C_FILES),$(BUILD_DIR)/$(file:.c=.o))
# GLOBAL_ASM_DEP = $(BUILD_DIR)/src/audio/non_matching_dep

COURSE_ASM_FILES := $(wildcard courses/*/*/packed.s)

C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s)) $(COURSE_ASM_FILES)
COURSE_FILES := $(foreach dir,$(COURSE_DIRS),$(wildcard $(dir)/model.inc.c))

# Object files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
		   $(foreach file,$(COURSE_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
           $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o))

# Automatic dependency files
DEP_FILES := $(O_FILES:.o=.d) $(BUILD_DIR)/$(LD_SCRIPT).d
##################### Compiler Options #######################

ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-linux-gnu-
else ifeq ($(shell type mips64-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-linux-gnu-
else
  CROSS := mips64-elf-
endif

# USE_QEMU_IRIX - when ido is selected, select which way to emulate IRIX programs
#   1 - use qemu-irix
#   0 - statically recompile the IRIX programs
USE_QEMU_IRIX ?= 0
$(eval $(call validate-option,USE_QEMU_IRIX,0 1))
TOOLS_DIR := tools

ifeq ($(USE_QEMU_IRIX),1)
  # Verify that qemu-irix exists
  QEMU_IRIX := $(call find-command,qemu-irix)
  ifeq (,$(QEMU_IRIX))
    $(error Using the IDO compiler requires qemu-irix. Please install qemu-irix package or set the QEMU_IRIX environment variable to the full qemu-irix binary path)
  endif
endif

ifeq ($(USE_QEMU_IRIX),1)
    IRIX_ROOT := $(TOOLS_DIR)/ido5.3_compiler
    CC        := $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc
else
    IDO_ROOT := tools/ido5.3_recomp
    CC       := $(IDO_ROOT)/cc
endif

AS      := $(CROSS)as
LD      := $(CROSS)ld
AR      := $(CROSS)ar
OBJDUMP := $(CROSS)objdump
OBJCOPY := $(CROSS)objcopy
PYTHON    := python3

# Prefer clang as C preprocessor if installed on the system
ifneq (,$(call find-command,clang))
  CPP      := clang
  CPPFLAGS := -E -P -x c -Wno-trigraphs
else
  CPP      := cpp
  CPPFLAGS := -P -Wno-trigraphs
endif

MIPSISET := -mips2 -32
OPT_FLAGS := -O2

TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64
CC_CFLAGS := -fno-builtin

INCLUDE_CFLAGS := -I include -I $(BUILD_DIR) -I $(BUILD_DIR)/include -I src -I .

# TODO: Seperate F3D declares into version flags if needed.
GRUCODE_CFLAGS = -DF3DEX_GBI -D_LANGUAGE_C

# Check code syntax with host compiler
CC_CHECK := gcc -fsyntax-only -fsigned-char $(CC_CFLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB $(VERSION_CFLAGS) $(GRUCODE_CFLAGS)

ASFLAGS = -march=vr4300 -mabi=32 -I include -I $(BUILD_DIR) --defsym F3DEX_GBI=1
CFLAGS = -Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -Xfullwarn -signed $(OPT_FLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) $(MIPSISET) $(GRUCODE_CFLAGS)
OBJCOPYFLAGS = --pad-to=0xC00000 --gap-fill=0xFF

LDFLAGS = -T undefined_syms.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(BUILD_DIR)/$(TARGET).map --no-check-sections

ifeq ($(shell getconf LONG_BIT), 32)
  # Work around memory allocation bug in QEMU
  export QEMU_GUEST_BASE := 1
else
  # Ensure that gcc treats the code as 32-bit
  CC_CHECK += -m32
endif

####################### Other Tools #########################

# N64 tools
MIO0TOOL = $(TOOLS_DIR)/mio0
N64CKSUM = $(TOOLS_DIR)/n64cksum
N64GRAPHICS = $(TOOLS_DIR)/n64graphics
BIN2C = $(PYTHON) $(TOOLS_DIR)/bin2c.py
EXTRACT_DATA_FOR_MIO  := $(TOOLS_DIR)/extract_data_for_mio
EMULATOR = mupen64plus
EMU_FLAGS = --noosd
LOADER = loader64
LOADER_FLAGS = -vwf

SHA1SUM = sha1sum


######################## Targets #############################

default: all

# file dependencies generated by splitter
MAKEFILE_SPLIT = Makefile.split
include $(MAKEFILE_SPLIT)

all: $(BUILD_DIR)/$(TARGET).z64
ifeq ($(COMPARE),1)
	@$(SHA1SUM) -c $(TARGET).sha1
endif

clean:
	$(RM) -r $(BUILD_DIR)

distclean:
	$(RM) -r $(BUILD_DIR_BASE)
	./extract_assets.py --clean
	make -C tools clean

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

##################### Texture Generation #####################

# RGBA32, RGBA16, IA16, IA8, IA4, IA1, I8, I4
$(BUILD_DIR)/%: %.png
	$(N64GRAPHICS) -i $@ -g $< -f $(lastword $(subst ., ,$@))

$(BUILD_DIR)/textures/%.mio0: $(BUILD_DIR)/textures/%
	$(MIO0TOOL) -c $< $@
	
#################### Compressed Segments #####################

$(BUILD_DIR)/%.mio0: %.bin
	$(MIO0TOOL) -c $< $@

$(BUILD_DIR)/%.mio0.o: $(BUILD_DIR)/%.mio0.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.mio0.s: $(BUILD_DIR)/%.mio0
	printf ".section .data\n\n.balign 4\n\n.incbin \"$<\"\n" > $@

$(BUILD_DIR)/src/crash_screen.o: src/crash_screen.c
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/crash_screen/crash_screen_font.ia1.inc.c -g textures/crash_screen/crash_screen_font.ia1.png -f ia1 -s u8
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/src/trophy_model.inc.o: src/trophy_model.inc.c
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_brass.rgba16.inc.c -g textures/trophy/reflection_map_brass.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_silver.rgba16.inc.c -g textures/trophy/reflection_map_silver.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_gold.rgba16.inc.c -g textures/trophy/reflection_map_gold.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium1.rgba16.inc.c -g textures/trophy/podium1.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium2.rgba16.inc.c -g textures/trophy/podium2.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium3.rgba16.inc.c -g textures/trophy/podium3.rgba16.png -f rgba16 -s u8
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/src/startup_logo.inc.o: src/startup_logo.inc.c
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/startup_logo/reflection_map_gold.rgba16.inc.c -g textures/startup_logo/reflection_map_gold.rgba16.png -f rgba16 -s u8
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

# common textures
$(BUILD_DIR)/src/common_textures.inc.o: src/common_textures.inc.c
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_00000_tlut.rgba16.inc.c -g textures/132B50_00000_tlut.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_00200.rgba16.inc.c -g textures/132B50_00200.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_01EE8.rgba16.inc.c -g textures/132B50_01EE8.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_03348.rgba16.inc.c -g textures/132B50_03348.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_03B48.rgba16.inc.c -g textures/132B50_03B48.rgba16.png -f rgba16 -s u8
	
	$(BIN2C) textures/132B50_04C68_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_04C68_tlut.rgba16
	$(BIN2C) textures/132B50_04E38_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_04E38_tlut.rgba16
	$(BIN2C) textures/132B50_04E68_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_04E68_tlut.rgba16
	$(BIN2C) textures/132B50_05068_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_05068_tlut.rgba16
	
	
#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_04C68_tlut.rgba16.inc.c -g textures/132B50_04C68_tlut.rgba16.png -f rgba16 -s u8
#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_04E68_tlut.rgba16.inc.c -g textures/132B50_04E68_tlut.rgba16.png -f rgba16 -s u8
#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_05068_tlut.rgba16.inc.c -g textures/132B50_05068_tlut.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_06A58.i4.inc.c -g textures/132B50_06A58.i4.png -f i4 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_06AD8.ia8.inc.c -g textures/132B50_06AD8.ia8.png -f ia8 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_06EF8.rgba16.ci4.inc.c -g textures/132B50_06EF8.rgba16.ci4.png -f ci4 -s u8 -c rgba16 -w 128 -h 32 -p textures/132B50_06ED8_tlut_gen.rgba16.bin
	$(BIN2C) textures/132B50_06ED8_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_06ED8_tlut.rgba16
	
	
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_08150.ia8.inc.c -g textures/132B50_08150.ia8.png -f ia8 -s u8 -w 100 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_08470.ia8.inc.c -g textures/132B50_08470.ia8.png -f ia8 -s u8 -w 100 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_08790.ia8.inc.c -g textures/132B50_08790.ia8.png -f ia8 -s u8 -w 100 -h 8


	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_09958.i4.inc.c -g textures/132B50_09958.i4.png -s u8 -w 64 -h 96 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0A558.i4.inc.c -g textures/132B50_0A558.i4.png -s u8 -w 64 -h 16 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0A958.rgba16.inc.c -g textures/132B50_0A958.rgba16.png -s u8 -w 32 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0AB58.rgba16.inc.c -g textures/132B50_0AB58.rgba16.png -s u8 -w 32 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0AD58.rgba16.inc.c -g textures/132B50_0AD58.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0B158.rgba16.inc.c -g textures/132B50_0B158.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0B558.rgba16.inc.c -g textures/132B50_0B558.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0B958.rgba16.inc.c -g textures/132B50_0B958.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0BD58.rgba16.inc.c -g textures/132B50_0BD58.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0C158.rgba16.inc.c -g textures/132B50_0C158.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0C558.rgba16.inc.c -g textures/132B50_0C558.rgba16.png -s u8 -w 104 -h 16

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0D258.i4.inc.c -g textures/132B50_0D258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0E258.i4.inc.c -g textures/132B50_0E258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_0F258.i4.inc.c -g textures/132B50_0F258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_10258.i4.inc.c -g textures/132B50_10258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_11258.i4.inc.c -g textures/132B50_11258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_12258.i4.inc.c -g textures/132B50_12258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_13258.i4.inc.c -g textures/132B50_13258.i4.png -s u8 -w 128 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_14258.i4.inc.c -g textures/132B50_14258.i4.png -s u8 -w 128 -h 64 -f i4

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_15258.i4.inc.c -g textures/132B50_15258.i4.png -s u8 -w 64 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_15A58.i4.inc.c -g textures/132B50_15A58.i4.png -s u8 -w 64 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_16258.i4.inc.c -g textures/132B50_16258.i4.png -s u8 -w 64 -h 64 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_16A58.i4.inc.c -g textures/132B50_16A58.i4.png -s u8 -w 64 -h 64 -f i4

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_17258_tlut.rgba16.inc.c -g textures/132B50_17258_tlut.rgba16.png -s u8 -w 38 -h 6
	
	$(BIN2C) textures/132B50_17458_combined_data.bin $(BUILD_DIR)/textures/132B50_17458_combined_data

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_17458.rgba16.ci8.inc.c -g textures/132B50_17458.rgba16.ci8.png -s u8 -w 64 -h 32 -c rgba16 -p textures/132B50_17258_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_17C58.rgba16.ci8.inc.c -g textures/132B50_17C58.rgba16.ci8.png -s u8 -w 64 -h 32 -c rgba16 -p textures/132B50_17258_tlut.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_18458.rgba16.ci8.inc.c -g textures/132B50_18458.rgba16.ci8.png -s u8 -w 64 -h 32 -c rgba16 -p textures/132B50_17258_tlut.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_18C58.rgba16.ci8.inc.c -g textures/132B50_18C58.rgba16.ci8.png -s u8 -w 64 -h 32 -c rgba16 -p textures/132B50_17258_tlut.bin

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19458_tlut.rgba16.inc.c -g textures/132B50_19458_tlut.rgba16.png -s u8 -w 16 -h 16

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19658.rgba16.ci8.inc.c -g textures/132B50_19658.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19758.rgba16.ci8.inc.c -g textures/132B50_19758.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19858.rgba16.ci8.inc.c -g textures/132B50_19858.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19958.rgba16.ci8.inc.c -g textures/132B50_19958.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19A58.rgba16.ci8.inc.c -g textures/132B50_19A58.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19B58.rgba16.ci8.inc.c -g textures/132B50_19B58.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19C58.rgba16.ci8.inc.c -g textures/132B50_19C58.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_19D58.rgba16.ci8.inc.c -g textures/132B50_19D58.rgba16.ci8.png -s u8 -w 16 -h 16 -c rgba16 -p textures/132B50_19458_tlut.rgba16.png

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A058.rgba16.ci8.inc.c -g textures/132B50_1A058.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A098.rgba16.ci8.inc.c -g textures/132B50_1A098.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A0D8.rgba16.ci8.inc.c -g textures/132B50_1A0D8.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A118.rgba16.ci8.inc.c -g textures/132B50_1A118.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A158.rgba16.ci8.inc.c -g textures/132B50_1A158.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A198.rgba16.ci8.inc.c -g textures/132B50_1A198.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A1D8.rgba16.ci8.inc.c -g textures/132B50_1A1D8.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A218.rgba16.ci8.inc.c -g textures/132B50_1A218.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A258.rgba16.ci8.inc.c -g textures/132B50_1A258.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A298.rgba16.ci8.inc.c -g textures/132B50_1A298.rgba16.ci8.png -s u8 -w 8 -h 8 -c rgba16 -p textures/132B50_19E58_tlut.rgba16.png

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A2D8.ia4.inc.c -g textures/132B50_1A2D8.ia4.png -s u8 -f ia4


	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A4D8_tlut.rgba16.inc.c -g textures/132B50_1A4D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A6D8_tlut.rgba16.inc.c -g textures/132B50_1A6D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1A8D8_tlut.rgba16.inc.c -g textures/132B50_1A8D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1AAD8_tlut.rgba16.inc.c -g textures/132B50_1AAD8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1ACD8_tlut.rgba16.inc.c -g textures/132B50_1ACD8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1AED8_tlut.rgba16.inc.c -g textures/132B50_1AED8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1B0D8_tlut.rgba16.inc.c -g textures/132B50_1B0D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1B2D8_tlut.rgba16.inc.c -g textures/132B50_1B2D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1B4D8_tlut.rgba16.inc.c -g textures/132B50_1B4D8_tlut.rgba16.png -s u8 -w 16 -h 16


	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1B6D8.rgba16.ci8.inc.c -g textures/132B50_1B6D8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1A4D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1BAD8.rgba16.ci8.inc.c -g textures/132B50_1BAD8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1A6D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1BED8.rgba16.ci8.inc.c -g textures/132B50_1BED8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1A8D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1C2D8.rgba16.ci8.inc.c -g textures/132B50_1C2D8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1AAD8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1C6D8.rgba16.ci8.inc.c -g textures/132B50_1C6D8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1ACD8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1CAD8.rgba16.ci8.inc.c -g textures/132B50_1CAD8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1AED8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1CED8.rgba16.ci8.inc.c -g textures/132B50_1CED8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1B0D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1D2D8.rgba16.ci8.inc.c -g textures/132B50_1D2D8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1B2D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1D6D8.rgba16.ci8.inc.c -g textures/132B50_1D6D8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1B4D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1DAD8.rgba16.ci8.inc.c -g textures/132B50_1DAD8.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_1B4D8_tlut_gen.rgba16.bin
	$(BIN2C) textures/132B50_1DAD8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_1DAD8.rgba16.ci8

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1DED8_tlut.rgba16.inc.c -g textures/132B50_1DED8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1E0D8_tlut.rgba16.inc.c -g textures/132B50_1E0D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1E2D8_tlut.rgba16.inc.c -g textures/132B50_1E2D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1E4D8_tlut.rgba16.inc.c -g textures/132B50_1E4D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1E6D8_tlut.rgba16.inc.c -g textures/132B50_1E6D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1E8D8_tlut.rgba16.inc.c -g textures/132B50_1E8D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1EAD8_tlut.rgba16.inc.c -g textures/132B50_1EAD8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1ECD8_tlut.rgba16.inc.c -g textures/132B50_1ECD8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1EED8_tlut.rgba16.inc.c -g textures/132B50_1EED8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1F0D8_tlut.rgba16.inc.c -g textures/132B50_1F0D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1F2D8_tlut.rgba16.inc.c -g textures/132B50_1F2D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1F4D8_tlut.rgba16.inc.c -g textures/132B50_1F4D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1F6D8_tlut.rgba16.inc.c -g textures/132B50_1F6D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1F8D8_tlut.rgba16.inc.c -g textures/132B50_1F8D8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1FAD8_tlut.rgba16.inc.c -g textures/132B50_1FAD8_tlut.rgba16.png -s u8 -w 16 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1FCD8_tlut.rgba16.inc.c -g textures/132B50_1FCD8_tlut.rgba16.png -s u8 -w 16 -h 16


	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_1FED8.rgba16.ci8.inc.c -g textures/132B50_1FED8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1DED8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_203D8.rgba16.ci8.inc.c -g textures/132B50_203D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1E0D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_208D8.rgba16.ci8.inc.c -g textures/132B50_208D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1E2D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_20DD8.rgba16.ci8.inc.c -g textures/132B50_20DD8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1E4D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_212D8.rgba16.ci8.inc.c -g textures/132B50_212D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1E6D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_217D8.rgba16.ci8.inc.c -g textures/132B50_217D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1E8D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_21CD8.rgba16.ci8.inc.c -g textures/132B50_21CD8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1EAD8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_221D8.rgba16.ci8.inc.c -g textures/132B50_221D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1ECD8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_226D8.rgba16.ci8.inc.c -g textures/132B50_226D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1EED8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_22BD8.rgba16.ci8.inc.c -g textures/132B50_22BD8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1F0D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_230D8.rgba16.ci8.inc.c -g textures/132B50_230D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1F2D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_235D8.rgba16.ci8.inc.c -g textures/132B50_235D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1F4D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_23AD8.rgba16.ci8.inc.c -g textures/132B50_23AD8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1F6D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_23FD8.rgba16.ci8.inc.c -g textures/132B50_23FD8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1F8D8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_244D8.rgba16.ci8.inc.c -g textures/132B50_244D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1FAD8_tlut_gen.rgba16.bin
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_249D8.rgba16.ci8.inc.c -g textures/132B50_249D8.rgba16.ci8.png -s u8 -w 40 -h 32 -f ci8 -c rgba16 -p textures/132B50_1FCD8_tlut_gen.rgba16.bin

	$(BIN2C) textures/132B50_24ED8_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_24ED8_tlut.rgba16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_25ED8_tlut.rgba16.inc.c -g textures/132B50_25ED8_tlut.rgba16.png -s u8 -w 16 -h 16

	$(BIN2C) textures/132B50_260D8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_260D8.rgba16.ci8
	$(BIN2C) textures/132B50_26558.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_26558.rgba16.ci8
	$(BIN2C) textures/132B50_269D8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_269D8.rgba16.ci8
	$(BIN2C) textures/132B50_26E58.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_26E58.rgba16.ci8
	$(BIN2C) textures/132B50_272D8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_272D8.rgba16.ci8
	$(BIN2C) textures/132B50_27758.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_27758.rgba16.ci8
	$(BIN2C) textures/132B50_27BD8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_27BD8.rgba16.ci8
	$(BIN2C) textures/132B50_28058.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_28058.rgba16.ci8
	$(BIN2C) textures/132B50_284D8.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_284D8.rgba16.ci8
	$(BIN2C) textures/132B50_28958.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_28958.rgba16.ci8

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_28DD8.rgba16.inc.c -g textures/132B50_28DD8.rgba16.png -s u8 -w 32 -h 16
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_291D8.rgba16.inc.c -g textures/132B50_291D8.rgba16.png -s u8 -w 16 -h 16

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_293D8.i4.inc.c -g textures/132B50_293D8.i4.png -s u8 -w 16 -h 16 -f i4
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_29458.i8.inc.c -g textures/132B50_29458.i8.png -s u8 -w 32 -h 32 -f i8

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_29858.rgba16.ci8.inc.c -g textures/132B50_29858.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/132B50_2A858_pal.rgba16.bin
	$(BIN2C) textures/132B50_29C58.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_29C58.rgba16.ci8
	$(BIN2C) textures/132B50_2A058.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_2A058.rgba16.ci8
	$(BIN2C) textures/132B50_2A458.rgba16.ci8.bin $(BUILD_DIR)/textures/132B50_2A458.rgba16.ci8


#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_29C58.rgba16.ci8.inc.c -g textures/132B50_29C58.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/a.rgba16.png
#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2A058.rgba16.ci8.inc.c -g textures/132B50_2A058.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/b.rgba16.bin
#$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2A458.rgba16.ci8.inc.c -g textures/132B50_2A458.rgba16.ci8.png -s u8 -w 32 -h 32 -f ci8 -c rgba16 -p textures/c.rgba16.bin

	$(BIN2C) textures/132B50_2A858_tlut.rgba16.bin $(BUILD_DIR)/textures/132B50_2A858_tlut.rgba16

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2AA58.rgba16.inc.c -g textures/132B50_2AA58.rgba16.png -s u8 -w 16 -h 16

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2AC58.i8.inc.c -g textures/132B50_2AC58.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2B058.i8.inc.c -g textures/132B50_2B058.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2B458.i8.inc.c -g textures/132B50_2B458.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2B858.i8.inc.c -g textures/132B50_2B858.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2BC58.i8.inc.c -g textures/132B50_2BC58.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2C058.i8.inc.c -g textures/132B50_2C058.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2C458.i8.inc.c -g textures/132B50_2C458.i8.png -s u8 -w 32 -h 32 -f i8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2C858.i8.inc.c -g textures/132B50_2C858.i8.png -s u8 -w 32 -h 32 -f i8

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CC58.rgba16.inc.c -g textures/132B50_2CC58.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CCD8.rgba16.inc.c -g textures/132B50_2CCD8.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CD58.rgba16.inc.c -g textures/132B50_2CD58.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CDD8.rgba16.inc.c -g textures/132B50_2CDD8.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CE58.rgba16.inc.c -g textures/132B50_2CE58.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CED8.rgba16.inc.c -g textures/132B50_2CED8.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CF58.rgba16.inc.c -g textures/132B50_2CF58.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2CFD8.rgba16.inc.c -g textures/132B50_2CFD8.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2D058.rgba16.inc.c -g textures/132B50_2D058.rgba16.png -s u8 -w 8 -h 8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_2D0D8.rgba16.inc.c -g textures/132B50_2D0D8.rgba16.png -s u8 -w 8 -h 8
	

	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/%.o: %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.s $(MIO0_FILES) $(RAW_TEXTURE_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(GLOBAL_ASM_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

$(GLOBAL_ASM_AUDIO_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT) #repeat for other files
	$(CPP) $(CPPFLAGS) $(VERSION_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<


#################### Libultra                      #####################
$(BUILD_DIR)/src/os/%.o:          OPT_FLAGS :=
$(BUILD_DIR)/src/os/math/%.o:     OPT_FLAGS := -O2
$(BUILD_DIR)/src/os/math/ll%.o:   OPT_FLAGS :=
$(BUILD_DIR)/src/os/math/ll%.o:   MIPSISET := -mips3 -32
$(BUILD_DIR)/src/os/ldiv.o:       OPT_FLAGS := -O2
$(BUILD_DIR)/src/os/string.o:     OPT_FLAGS := -O2
$(BUILD_DIR)/src/os/gu%.o:        OPT_FLAGS := -O3
$(BUILD_DIR)/src/os/al%.o:        OPT_FLAGS := -O3
$(BUILD_DIR)/src/os/__osLeoInterrupt.o:        OPT_FLAGS := -O1
$(BUILD_DIR)/src/os/_Printf.o:        OPT_FLAGS := -O3
$(BUILD_DIR)/src/os/_Litob.o:        OPT_FLAGS := -O3
$(BUILD_DIR)/src/os/_Ldtob.o:        OPT_FLAGS := -O3
$(BUILD_DIR)/src/os/osSyncPrintf.o:        OPT_FLAGS := -O3

#################### Compile course vertex to mio0 #####################

mushroom_cup := $(BUILD_DIR)/courses/mushroom_cup
flower_cup := $(BUILD_DIR)/courses/flower_cup
star_cup := $(BUILD_DIR)/courses/star_cup
special_cup := $(BUILD_DIR)/courses/special_cup
battle := $(BUILD_DIR)/courses/battle
LD_COURSE_VERTEX_DEPENDENCIES :=        \
     $(mushroom_cup)/luigi_raceway/model.inc.mio0.o $(mushroom_cup)/moo_moo_farm/model.inc.mio0.o \
	 $(mushroom_cup)/koopa_beach/model.inc.mio0.o $(mushroom_cup)/kalimari_desert/model.inc.mio0.o \
	 $(flower_cup)/toads_turnpike/model.inc.mio0.o $(flower_cup)/frappe_snowland/model.inc.mio0.o \
	 $(flower_cup)/choco_mountain/model.inc.mio0.o $(flower_cup)/mario_raceway/model.inc.mio0.o \
	 $(star_cup)/wario_stadium/model.inc.mio0.o $(star_cup)/sherbet_land/model.inc.mio0.o \
	 $(star_cup)/royal_raceway/model.inc.mio0.o $(star_cup)/bowsers_castle/model.inc.mio0.o \
	 $(special_cup)/dks_jungle_parkway/model.inc.mio0.o $(special_cup)/yoshi_valley/model.inc.mio0.o \
	 $(special_cup)/banshee_boardwalk/model.inc.mio0.o $(special_cup)/rainbow_road/model.inc.mio0.o \
	 $(battle)/big_donut/model.inc.mio0.o $(battle)/block_fort/model.inc.mio0.o \
	 $(battle)/double_deck/model.inc.mio0.o $(battle)/skyscraper/model.inc.mio0.o \

$(mushroom_cup)/luigi_raceway/%.inc.mio0.o: courses/mushroom_cup/luigi_raceway/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(mushroom_cup)/luigi_raceway/$*.inc.elf.map -o $(mushroom_cup)/luigi_raceway/$*.inc.elf $(mushroom_cup)/luigi_raceway/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(mushroom_cup)/luigi_raceway/$*.inc.elf $(mushroom_cup)/luigi_raceway/$*.inc.bin
	$(MIO0TOOL) -c $(mushroom_cup)/luigi_raceway/$*.inc.bin $(mushroom_cup)/luigi_raceway/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/mushroom_cup/luigi_raceway/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_luigi_raceway_packed\n\n.incbin \"bin/course_luigi_raceway_packed.bin\"\n" > build/us/courses/mushroom_cup/luigi_raceway/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(mushroom_cup)/luigi_raceway/$*.inc.mio0.o $(mushroom_cup)/luigi_raceway/$*.inc.mio0.s

$(mushroom_cup)/moo_moo_farm/%.inc.mio0.o: courses/mushroom_cup/moo_moo_farm/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(mushroom_cup)/moo_moo_farm/$*.elf.map -o $(mushroom_cup)/moo_moo_farm/$*.inc.elf $(mushroom_cup)/moo_moo_farm/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(mushroom_cup)/moo_moo_farm/$*.inc.elf $(mushroom_cup)/moo_moo_farm/$*.inc.bin
	$(MIO0TOOL) -c $(mushroom_cup)/moo_moo_farm/$*.inc.bin $(mushroom_cup)/moo_moo_farm/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/mushroom_cup/moo_moo_farm/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_moo_moo_farm_packed\n\n.incbin \"bin/course_moo_moo_farm_packed.bin\"\n" > build/us/courses/mushroom_cup/moo_moo_farm/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(mushroom_cup)/moo_moo_farm/$*.inc.mio0.o $(mushroom_cup)/moo_moo_farm/$*.inc.mio0.s

$(mushroom_cup)/koopa_beach/%.inc.mio0.o: courses/mushroom_cup/koopa_beach/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(mushroom_cup)/koopa_beach/$*.elf.map -o $(mushroom_cup)/koopa_beach/$*.inc.elf $(mushroom_cup)/koopa_beach/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(mushroom_cup)/koopa_beach/$*.inc.elf $(mushroom_cup)/koopa_beach/$*.inc.bin
	$(MIO0TOOL) -c $(mushroom_cup)/koopa_beach/$*.inc.bin $(mushroom_cup)/koopa_beach/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/mushroom_cup/koopa_beach/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_koopa_troopa_beach_packed\n\n.incbin \"bin/course_koopa_troopa_beach_packed.bin\"\n" > build/us/courses/mushroom_cup/koopa_beach/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(mushroom_cup)/koopa_beach/$*.inc.mio0.o $(mushroom_cup)/koopa_beach/$*.inc.mio0.s

$(mushroom_cup)/kalimari_desert/%.inc.mio0.o: courses/mushroom_cup/kalimari_desert/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(mushroom_cup)/kalimari_desert/$*.elf.map -o $(mushroom_cup)/kalimari_desert/$*.inc.elf $(mushroom_cup)/kalimari_desert/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(mushroom_cup)/kalimari_desert/$*.inc.elf $(mushroom_cup)/kalimari_desert/$*.inc.bin
	$(MIO0TOOL) -c $(mushroom_cup)/kalimari_desert/$*.inc.bin $(mushroom_cup)/kalimari_desert/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/mushroom_cup/kalimari_desert/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_kalimari_desert_packed\n\n.incbin \"bin/course_kalimari_desert_packed.bin\"\n" > build/us/courses/mushroom_cup/kalimari_desert/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(mushroom_cup)/kalimari_desert/$*.inc.mio0.o $(mushroom_cup)/kalimari_desert/$*.inc.mio0.s

$(flower_cup)/toads_turnpike/%.inc.mio0.o: courses/flower_cup/toads_turnpike/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(flower_cup)/toads_turnpike/$*.elf.map -o $(flower_cup)/toads_turnpike/$*.inc.elf $(flower_cup)/toads_turnpike/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(flower_cup)/toads_turnpike/$*.inc.elf $(flower_cup)/toads_turnpike/$*.inc.bin
	$(MIO0TOOL) -c $(flower_cup)/toads_turnpike/$*.inc.bin $(flower_cup)/toads_turnpike/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/flower_cup/toads_turnpike/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_toads_turnpike_packed\n\n.incbin \"bin/course_toads_turnpike_packed.bin\"\n" > build/us/courses/flower_cup/toads_turnpike/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(flower_cup)/toads_turnpike/$*.inc.mio0.o $(flower_cup)/toads_turnpike/$*.inc.mio0.s

$(flower_cup)/frappe_snowland/%.inc.mio0.o: courses/flower_cup/frappe_snowland/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(flower_cup)/frappe_snowland/$*.elf.map -o $(flower_cup)/frappe_snowland/$*.inc.elf $(flower_cup)/frappe_snowland/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(flower_cup)/frappe_snowland/$*.inc.elf $(flower_cup)/frappe_snowland/$*.inc.bin
	$(MIO0TOOL) -c $(flower_cup)/frappe_snowland/$*.inc.bin $(flower_cup)/frappe_snowland/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/flower_cup/frappe_snowland/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_frappe_snowland_packed\n\n.incbin \"bin/course_frappe_snowland_packed.bin\"\n" > build/us/courses/flower_cup/frappe_snowland/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(flower_cup)/frappe_snowland/$*.inc.mio0.o $(flower_cup)/frappe_snowland/$*.inc.mio0.s

$(flower_cup)/choco_mountain/%.inc.mio0.o: courses/flower_cup/choco_mountain/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(flower_cup)/choco_mountain/$*.elf.map -o $(flower_cup)/choco_mountain/$*.inc.elf $(flower_cup)/choco_mountain/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(flower_cup)/choco_mountain/$*.inc.elf $(flower_cup)/choco_mountain/$*.inc.bin
	$(MIO0TOOL) -c $(flower_cup)/choco_mountain/$*.inc.bin $(flower_cup)/choco_mountain/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/flower_cup/choco_mountain/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_choco_mountain_packed\n\n.incbin \"bin/course_choco_mountain_packed.bin\"\n" > build/us/courses/flower_cup/choco_mountain/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(flower_cup)/choco_mountain/$*.inc.mio0.o $(flower_cup)/choco_mountain/$*.inc.mio0.s

$(flower_cup)/mario_raceway/%.inc.mio0.o: courses/flower_cup/mario_raceway/model.inc.c 
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(flower_cup)/mario_raceway/model.elf.map -o $(flower_cup)/mario_raceway/model.inc.elf $(flower_cup)/mario_raceway/model.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(flower_cup)/mario_raceway/model.inc.elf $(flower_cup)/mario_raceway/model.inc.bin
	$(MIO0TOOL) -c $(flower_cup)/mario_raceway/model.inc.bin $(flower_cup)/mario_raceway/model.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/flower_cup/mario_raceway/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_mario_raceway_packed\n\n.incbin \"bin/course_mario_raceway_packed.bin\"\n" > build/us/courses/flower_cup/mario_raceway/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(flower_cup)/mario_raceway/$*.inc.mio0.o $(flower_cup)/mario_raceway/$*.inc.mio0.s

$(star_cup)/wario_stadium/%.inc.mio0.o: courses/star_cup/wario_stadium/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(star_cup)/wario_stadium/$*.elf.map -o $(star_cup)/wario_stadium/$*.inc.elf $(star_cup)/wario_stadium/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(star_cup)/wario_stadium/$*.inc.elf $(star_cup)/wario_stadium/$*.inc.bin
	$(MIO0TOOL) -c $(star_cup)/wario_stadium/$*.inc.bin $(star_cup)/wario_stadium/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/star_cup/wario_stadium/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_wario_stadium_packed\n\n.incbin \"bin/course_wario_stadium_packed.bin\"\n" > build/us/courses/star_cup/wario_stadium/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(star_cup)/wario_stadium/$*.inc.mio0.o $(star_cup)/wario_stadium/$*.inc.mio0.s

$(star_cup)/sherbet_land/%.inc.mio0.o: courses/star_cup/sherbet_land/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(star_cup)/sherbet_land/$*.elf.map -o $(star_cup)/sherbet_land/$*.inc.elf $(star_cup)/sherbet_land/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(star_cup)/sherbet_land/$*.inc.elf $(star_cup)/sherbet_land/$*.inc.bin
	$(MIO0TOOL) -c $(star_cup)/sherbet_land/$*.inc.bin $(star_cup)/sherbet_land/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/star_cup/sherbet_land/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_sherbet_land_packed\n\n.incbin \"bin/course_sherbet_land_packed.bin\"\n" > build/us/courses/star_cup/sherbet_land/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(star_cup)/sherbet_land/$*.inc.mio0.o $(star_cup)/sherbet_land/$*.inc.mio0.s

$(star_cup)/royal_raceway/%.inc.mio0.o: courses/star_cup/royal_raceway/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(star_cup)/royal_raceway/$*.elf.map -o $(star_cup)/royal_raceway/$*.inc.elf $(star_cup)/royal_raceway/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(star_cup)/royal_raceway/$*.inc.elf $(star_cup)/royal_raceway/$*.inc.bin
	$(MIO0TOOL) -c $(star_cup)/royal_raceway/$*.inc.bin $(star_cup)/royal_raceway/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/star_cup/royal_raceway/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_royal_raceway_packed\n\n.incbin \"bin/course_royal_raceway_packed.bin\"\n" > build/us/courses/star_cup/royal_raceway/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(star_cup)/royal_raceway/$*.inc.mio0.o $(star_cup)/royal_raceway/$*.inc.mio0.s

$(star_cup)/bowsers_castle/%.inc.mio0.o: courses/star_cup/bowsers_castle/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(star_cup)/bowsers_castle/$*.elf.map -o $(star_cup)/bowsers_castle/$*.inc.elf $(star_cup)/bowsers_castle/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(star_cup)/bowsers_castle/$*.inc.elf $(star_cup)/bowsers_castle/$*.inc.bin
	$(MIO0TOOL) -c $(star_cup)/bowsers_castle/$*.inc.bin $(star_cup)/bowsers_castle/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/star_cup/bowsers_castle/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_bowsers_castle_packed\n\n.incbin \"bin/course_bowsers_castle_packed.bin\"\n" > build/us/courses/star_cup/bowsers_castle/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(star_cup)/bowsers_castle/$*.inc.mio0.o $(star_cup)/bowsers_castle/$*.inc.mio0.s

$(special_cup)/dks_jungle_parkway/%.inc.mio0.o: courses/special_cup/dks_jungle_parkway/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(special_cup)/dks_jungle_parkway/$*.elf.map -o $(special_cup)/dks_jungle_parkway/$*.inc.elf $(special_cup)/dks_jungle_parkway/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(special_cup)/dks_jungle_parkway/$*.inc.elf $(special_cup)/dks_jungle_parkway/$*.inc.bin
	$(MIO0TOOL) -c $(special_cup)/dks_jungle_parkway/$*.inc.bin $(special_cup)/dks_jungle_parkway/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/special_cup/dks_jungle_parkway/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_dks_jungle_parkway_packed\n\n.incbin \"bin/course_dks_jungle_parkway_packed.bin\"\n" > build/us/courses/special_cup/dks_jungle_parkway/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(special_cup)/dks_jungle_parkway/$*.inc.mio0.o $(special_cup)/dks_jungle_parkway/$*.inc.mio0.s

$(special_cup)/yoshi_valley/%.inc.mio0.o: courses/special_cup/yoshi_valley/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(special_cup)/yoshi_valley/$*.elf.map -o $(special_cup)/yoshi_valley/$*.inc.elf $(special_cup)/yoshi_valley/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(special_cup)/yoshi_valley/$*.inc.elf $(special_cup)/yoshi_valley/$*.inc.bin
	$(MIO0TOOL) -c $(special_cup)/yoshi_valley/$*.inc.bin $(special_cup)/yoshi_valley/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/special_cup/yoshi_valley/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_yoshi_valley_packed\n\n.incbin \"bin/course_yoshi_valley_packed.bin\"\n" > build/us/courses/special_cup/yoshi_valley/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(special_cup)/yoshi_valley/$*.inc.mio0.o $(special_cup)/yoshi_valley/$*.inc.mio0.s

$(special_cup)/banshee_boardwalk/%.inc.mio0.o: courses/special_cup/banshee_boardwalk/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(special_cup)/banshee_boardwalk/$*.elf.map -o $(special_cup)/banshee_boardwalk/$*.inc.elf $(special_cup)/banshee_boardwalk/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(special_cup)/banshee_boardwalk/$*.inc.elf $(special_cup)/banshee_boardwalk/$*.inc.bin
	$(MIO0TOOL) -c $(special_cup)/banshee_boardwalk/$*.inc.bin $(special_cup)/banshee_boardwalk/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/special_cup/banshee_boardwalk/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_banshee_boardwalk_packed\n\n.incbin \"bin/course_banshee_boardwalk_packed.bin\"\n" > build/us/courses/special_cup/banshee_boardwalk/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(special_cup)/banshee_boardwalk/$*.inc.mio0.o $(special_cup)/banshee_boardwalk/$*.inc.mio0.s

$(special_cup)/rainbow_road/%.inc.mio0.o: courses/special_cup/rainbow_road/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(special_cup)/rainbow_road/$*.elf.map -o $(special_cup)/rainbow_road/$*.inc.elf $(special_cup)/rainbow_road/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(special_cup)/rainbow_road/$*.inc.elf $(special_cup)/rainbow_road/$*.inc.bin
	$(MIO0TOOL) -c $(special_cup)/rainbow_road/$*.inc.bin $(special_cup)/rainbow_road/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/special_cup/rainbow_road/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_rainbow_road_packed\n\n.incbin \"bin/course_rainbow_road_packed.bin\"\n" > build/us/courses/special_cup/rainbow_road/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(special_cup)/rainbow_road/$*.inc.mio0.o $(special_cup)/rainbow_road/$*.inc.mio0.s

$(battle)/big_donut/%.inc.mio0.o: courses/battle/big_donut/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(battle)/big_donut/$*.elf.map -o $(battle)/big_donut/$*.inc.elf $(battle)/big_donut/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(battle)/big_donut/$*.inc.elf $(battle)/big_donut/$*.inc.bin
	$(MIO0TOOL) -c $(battle)/big_donut/$*.inc.bin $(battle)/big_donut/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/battle/big_donut/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_big_donut_packed\n\n.incbin \"bin/course_big_donut_packed.bin\"\n" > build/us/courses/battle/big_donut/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(battle)/big_donut/$*.inc.mio0.o $(battle)/big_donut/$*.inc.mio0.s

$(battle)/block_fort/%.inc.mio0.o: courses/battle/block_fort/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(battle)/block_fort/$*.elf.map -o $(battle)/block_fort/$*.inc.elf $(battle)/block_fort/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(battle)/block_fort/$*.inc.elf $(battle)/block_fort/$*.inc.bin
	$(MIO0TOOL) -c $(battle)/block_fort/$*.inc.bin $(battle)/block_fort/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/battle/block_fort/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_block_fort_packed\n\n.incbin \"bin/course_block_fort_packed.bin\"\n" > build/us/courses/battle/block_fort/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(battle)/block_fort/$*.inc.mio0.o $(battle)/block_fort/$*.inc.mio0.s

$(battle)/double_deck/%.inc.mio0.o: courses/battle/double_deck/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(battle)/double_deck/$*.elf.map -o $(battle)/double_deck/$*.inc.elf $(battle)/double_deck/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(battle)/double_deck/$*.inc.elf $(battle)/double_deck/$*.inc.bin
	$(MIO0TOOL) -c $(battle)/double_deck/$*.inc.bin $(battle)/double_deck/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/battle/double_deck/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_double_deck_packed\n\n.incbin \"bin/course_double_deck_packed.bin\"\n" > build/us/courses/battle/double_deck/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(battle)/double_deck/$*.inc.mio0.o $(battle)/double_deck/$*.inc.mio0.s

$(battle)/skyscraper/%.inc.mio0.o: courses/battle/skyscraper/%.inc.c
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(battle)/skyscraper/$*.elf.map -o $(battle)/skyscraper/$*.inc.elf $(battle)/skyscraper/$*.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(battle)/skyscraper/$*.inc.elf $(battle)/skyscraper/$*.inc.bin
	$(MIO0TOOL) -c $(battle)/skyscraper/$*.inc.bin $(battle)/skyscraper/$*.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"build/us/courses/battle/skyscraper/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_skyscraper_packed\n\n.incbin \"bin/course_skyscraper_packed.bin\"\n" > build/us/courses/battle/skyscraper/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(battle)/skyscraper/$*.inc.mio0.o $(battle)/skyscraper/$*.inc.mio0.s

####################       STAFF GHOSTS        #####################

# trophy_model.inc.c

$(BUILD_DIR)/src/trophy_model.inc.mio0.o: $(BUILD_DIR)/src/trophy_model.inc.o
	$(LD) -t -e 0 -Ttext=0B000000 -Map $(BUILD_DIR)/src/trophy_model.inc.elf.map -o $(BUILD_DIR)/src/trophy_model.inc.elf $(BUILD_DIR)/src/trophy_model.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/trophy_model.inc.elf $(BUILD_DIR)/src/trophy_model.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/trophy_model.inc.bin $(BUILD_DIR)/src/trophy_model.inc.mio0
	printf ".include \"macros.inc\"\n\n.data\n\n.balign 4\n\nglabel trophy_model\n\n.incbin \"build/us/src/trophy_model.inc.mio0\"\n\n.balign 16\nglabel data_821D10_end\n" > build/us/src/trophy_model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/trophy_model.inc.mio0.o $(BUILD_DIR)/src/trophy_model.inc.mio0.s

# startup_logo.inc.c

$(BUILD_DIR)/src/startup_logo.inc.mio0.o: src/startup_logo.inc.c
	$(LD) -t -e 0 -Ttext=06000000 -Map $(BUILD_DIR)/src/startup_logo.inc.elf.map -o $(BUILD_DIR)/src/startup_logo.inc.elf $(BUILD_DIR)/src/startup_logo.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/startup_logo.inc.elf $(BUILD_DIR)/src/startup_logo.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/startup_logo.inc.bin $(BUILD_DIR)/src/startup_logo.inc.mio0
	printf ".include \"macros.inc\"\n\n.data\n\n\n\n.balign 4\n\n\nglabel startup_logo\n\n.incbin \"build/us/src/startup_logo.inc.mio0\"\n\n.balign 16\n\nglabel data_825800_end\n" > build/us/src/startup_logo.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/startup_logo.inc.mio0.o $(BUILD_DIR)/src/startup_logo.inc.mio0.s

# common_textures.inc.c
$(BUILD_DIR)/src/common_textures.inc.mio0.o: $(BUILD_DIR)/src/common_textures.inc.o
	$(LD) -t -e 0 -Ttext=0D000000 --unresolved-symbols=ignore-all -Map $(BUILD_DIR)/src/common_textures.inc.elf.map -o $(BUILD_DIR)/src/common_textures.inc.elf $(BUILD_DIR)/src/common_textures.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/common_textures.inc.elf $(BUILD_DIR)/src/common_textures.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/common_textures.inc.bin $(BUILD_DIR)/src/common_textures.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"src/common_textures.inc.mio0\"\n\n" > build/us/src/common_textures.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/common_textures.inc.mio0.o $(BUILD_DIR)/src/common_textures.inc.mio0.s


$(BUILD_DIR)/$(TARGET).elf: $(O_FILES) $(COURSE_MIO0_OBJ_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BUILD_DIR)/src/startup_logo.inc.mio0.o $(BUILD_DIR)/src/trophy_model.inc.mio0.o $(BUILD_DIR)/src/common_textures.inc.mio0.o $(LD_COURSE_VERTEX_DEPENDENCIES) undefined_syms.txt
	$(LD) $(LDFLAGS) -o $@

$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $(OBJCOPYFLAGS) $< $(@:.z64=.bin) -O binary
	$(N64CKSUM) $(@:.z64=.bin) $@

$(BUILD_DIR)/$(TARGET).hex: $(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(BUILD_DIR)/$(TARGET).elf 
	$(OBJDUMP) -D $< > $@

test: $(TARGET).z64
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(TARGET).z64
	$(LOADER) $(LOADER_FLAGS) $<

.PHONY: all clean distclean default diff test load
.SECONDARY:

# Remove built-in rules, to improve  build/us/courses/star_cup/bowsers_castle/model.inc.mio0.performance
MAKEFLAGS += --no-builtin-rules

-include $(DEP_FILES)


print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
