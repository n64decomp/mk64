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
export LANG := C

ifeq ($(VERSION),us)
  VERSION_CFLAGS := -DVERSION_US
  VERSION_ASFLAGS := --defsym VERSION_US=1
  TARGET := mk64.us
endif

 BASEROM := baserom.$(VERSION).z64

# COMPILER - selects the C compiler to use
#   ido - uses the SGI IRIS Development Option compiler, which is used to build
#         an original matching N64 ROM
#   gcc - uses the GNU C Compiler
COMPILER ?= ido
$(eval $(call validate-option,COMPILER,ido gcc))

### Utility Functions ###
# Returns the path to the command $(1) if exists. Otherwise returns an empty string.
find-command = $(shell which $(1) 2>/dev/null)

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR_BASE := build
BUILD_DIR := $(BUILD_DIR_BASE)/$(VERSION)

# Directories containing source files
ASSET_DIR := assets
BIN_DIR := bin
DATA_DIR := data
INCLUDE_DIRS := include
SRC_DIRS := src src/audio src/os src/os/math courses
ASM_DIRS := asm asm/audio asm/os asm/os/non_matchings $(DATA_DIR) $(DATA_DIR)/sound_data $(DATA_DIR)/karts
COURSE_DIRS := $(shell find courses -mindepth 2 -type d)

TEXTURES_DIR = textures
TEXTURE_DIRS := textures/common

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(COURSE_DIRS) $(INCLUDE_DIRS) $(ASM_DIRS) $(ALL_KARTS_DIRS) $(TEXTURES_DIR)/raw \
	$(TEXTURES_DIR)/standalone $(TEXTURES_DIR)/startup_logo $(TEXTURES_DIR)/crash_screen $(TEXTURES_DIR)/trophy $(TEXTURES_DIR)/courses        \
	$(TEXTURES_DIR)/courses/tlut $(TEXTURES_DIR)/courses/tlut2 $(TEXTURE_DIRS) $(TEXTURE_DIRS)/tlut $(TEXTURES_DIR)/courses/tlut3              \
	$(TEXTURE_DIRS)/tlut2 $(BIN_DIR))

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
COURSE_FILES := $(foreach dir,$(COURSE_DIRS),$(wildcard $(dir)/*.inc.c))

# Object files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
		   $(foreach file,$(COURSE_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
           $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o)) \

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
GRUCODE_CFLAGS = -DF3DEX_GBI -DF3D_OLD -D_LANGUAGE_C

# Check code syntax with host compiler
CC_CHECK := gcc -fsyntax-only -fsigned-char $(CC_CFLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -std=gnu90 -Wall -Wempty-body -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB $(VERSION_CFLAGS) $(GRUCODE_CFLAGS)

ASFLAGS = -march=vr4300 -mabi=32 -I include -I $(BUILD_DIR) --defsym F3DEX_GBI=1
CFLAGS = -Wab,-r4300_mul -non_shared -G 0 -Xcpluscomm -Xfullwarn -woff 838,649 -signed $(OPT_FLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) $(VERSION_CFLAGS) $(MIPSISET) $(GRUCODE_CFLAGS)
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
DLPACKER = $(TOOLS_DIR)/displaylist_packer
DLSYMGEN = $(PYTHON) $(TOOLS_DIR)/generate_segment_headers.py
MODELSYMGEN = $(PYTHON) $(TOOLS_DIR)/generate_vertice_count.py
BIN2C = $(PYTHON) $(TOOLS_DIR)/bin2c.py
EXTRACT_DATA_FOR_MIO  := $(TOOLS_DIR)/extract_data_for_mio
ASSET_EXTRACT := $(PYTHON) $(TOOLS_DIR)/new_extract_assets.py
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

distclean: distclean_assets
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

############################### Assets ###############################

ASSET_INCLUDES := $(shell find $(ASSET_DIR)/include -type f -name *.mk)
ASSET_DIRECTORIES :=

$(foreach inc,$(ASSET_INCLUDES),$(eval include $(inc)))

distclean_assets:
	rm -rf $(ASSET_DIRECTORIES)

##########################################################################################

TEXTURE_FILES := $(foreach dir,$(TEXTURE_DIRS),$(subst .png, , $(wildcard $(dir)/*)))
#TEXTURE_FILES_C := $(foreach file,$(TEXTURE_FILES),$(BUILD_DIR)/$(file:.png=.inc.c))

TEXTURE_FILES_TLUT := $(foreach dir,$(TEXTURE_DIRS)/tlut,$(subst .png, , $(wildcard $(dir)/*)))

TEXTURE_FILES_TLUT2 := $(foreach dir,$(TEXTURE_DIRS)/tlut2,$(subst .png, , $(wildcard $(dir)/*)))


$(TEXTURE_FILES):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8

# TLUT
$(TEXTURE_FILES_TLUT):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8 -c $(lastword $(subst ., ,$(subst .$(lastword $(subst ., ,$(TEXTURE_FILES_TLUT))), ,$(TEXTURE_FILES_TLUT)))) -p $(BUILD_DIR)/$@.tlut.inc.c

$(TEXTURE_FILES_TLUT2):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8 -c $(lastword $(subst ., ,$(subst .$(lastword $(subst ., ,$(TEXTURE_FILES_TLUT2))), ,$(TEXTURE_FILES_TLUT2)))) -p $(BUILD_DIR)/$@.tlut.inc.c -m 0xFFFF

# common textures
$(BUILD_DIR)/src/common_textures.inc.o: src/common_textures.inc.c $(TEXTURE_FILES) $(TEXTURE_FILES_TLUT) $(TEXTURE_FILES_TLUT2)

	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/132B50_25ED8_tlut.rgba16.inc.c -g textures/132B50_25ED8_tlut.rgba16.png -s u8
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_260D8.rgba16.ci8.inc.c -g textures/132B50_260D8.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_26558.rgba16.ci8.inc.c -g textures/132B50_26558.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_269D8.rgba16.ci8.inc.c -g textures/132B50_269D8.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_26E58.rgba16.ci8.inc.c -g textures/132B50_26E58.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_272D8.rgba16.ci8.inc.c -g textures/132B50_272D8.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_27758.rgba16.ci8.inc.c -g textures/132B50_27758.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_27BD8.rgba16.ci8.inc.c -g textures/132B50_27BD8.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_28058.rgba16.ci8.inc.c -g textures/132B50_28058.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_284D8.rgba16.ci8.inc.c -g textures/132B50_284D8.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png
	$(N64GRAPHICS) -Z $(BUILD_DIR)/textures/132B50_28958.rgba16.ci8.inc.c -g textures/132B50_28958.rgba16.ci8.png -s u8 -w 24 -h 48 -f ci8 -c rgba16 -p textures/132B50_25ED8_tlut.rgba16.png

	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

COURSE_MODEL_TARGETS := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/model.inc.mio0.o)
COURSE_PACKED_DL := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/packed_dl.inc.bin)
# COURSE_PACKED_DL_O := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/packed_dl.inc.bin)



#$(info $(COURSE_PACKED_DL))
$(COURSE_PACKED_DL):
	$(LD) -t -e 0 -Ttext=07000000 -Map $(@D)/packed.inc.elf.map -o $(@D)/packed.inc.elf $(@D)/packed.inc.o --no-check-sections
# Generate header for packed displaylists
#   $(DLSYMGEN)
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/packed.inc.elf $(@D)/packed.inc.bin
	$(DLPACKER) $(@D)/packed.inc.bin $(@D)/packed_dl.inc.bin

# Elf the course data to include symbol addresses then convert to binary and compress to mio0. The mio0 file is converted to an object file so that the linker can link it.
$(COURSE_MODEL_TARGETS) : $(BUILD_DIR)/%/model.inc.mio0.o : %/model.inc.c $(COURSE_PACKED_DL)
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(@D)/model.inc.elf.map -o $(@D)/model.inc.elf $(@D)/model.inc.o --no-check-sections
# Generate model vertice count header
#	$(MODELSYMGEN)
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/model.inc.elf $(@D)/model.inc.bin
	$(MIO0TOOL) -c $(@D)/model.inc.bin $(@D)/model.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"$(@D)/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_$(lastword $(subst /, ,$*))_packed\n\n.incbin \"$(@D)/packed_dl.inc.bin\"\n\n.balign 0x10\n" > $(@D)/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $@ $(@D)/model.inc.mio0.s

#################### Compile course vertex to mio0 #####################
#################### Compile course displaylists to mio0 #####################

COURSE_TEXTURE_FILES := $(foreach dir,textures/courses,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT := $(foreach dir,textures/courses/tlut,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT2 := $(foreach dir,textures/courses/tlut2,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT3 := $(foreach dir,textures/courses/tlut3,$(subst .png, , $(wildcard $(dir)/*)))
#RAINBOW_ROAD_TEXTURE_FILES := $(foreach dir,textures/courses/rainbow_road,$(subst .png, , $(wildcard $(dir)/*)))

COURSE_DATA_TARGETS := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/course_data.inc.mio0.o)
COURSE_DATA_TARGETS_O := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/course_data.inc.o)

$(COURSE_TEXTURE_FILES):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8

$(COURSE_TLUT):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8 -c $(lastword $(subst ., ,$(subst .$(lastword $(subst ., ,$(COURSE_TLUT))), ,$(COURSE_TLUT)))) -p $(BUILD_DIR)/$@.tlut.inc.c

$(COURSE_TLUT2):
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@.inc.c -g $@.png -f $(lastword $(subst ., ,$@)) -s u8 -c $(lastword $(subst ., ,$(subst .$(lastword $(subst ., ,$(COURSE_TLUT2))), ,$(COURSE_TLUT2)))) -p $(BUILD_DIR)/$@.tlut.inc.c -m 0xFFFF

$(COURSE_TLUT3):
	$(N64GRAPHICS) -Z $(BUILD_DIR)/$@.inc.c -g $@.png -s u8 -c rgba16 -f ci8 -p textures/courses/$(basename $(notdir $@)).png
#   tluts

$(COURSE_DATA_TARGETS_O): $(BUILD_DIR)/%/course_data.inc.o : %/course_data.inc.c $(COURSE_TEXTURE_FILES) $(COURSE_TLUT) $(COURSE_TLUT2) $(COURSE_TLUT3)
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(COURSE_DATA_TARGETS): $(BUILD_DIR)/%/course_data.inc.mio0.o: $(BUILD_DIR)/%/course_data.inc.o
# todo: Clean this up if possible. Not really worth the time though.
	$(LD) -t -e 0 -Ttext=06000000 -Map $(@D)/course_data.inc.elf.map -o $(@D)/course_data.inc.elf $(@D)/course_data.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/course_data.inc.elf $(@D)/course_data.inc.bin
	$(MIO0TOOL) -c $(@D)/course_data.inc.bin $(@D)/course_data.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"$(@D)/course_data.inc.mio0\"\n\n" > $(@D)/course_data.inc.mio0.s
	$(AS) $(ASFLAGS) -o $@ $(@D)/course_data.inc.mio0.s


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

# Alternate compiler flags needed for matching
ifeq ($(COMPILER),ido)
    $(BUILD_DIR)/src/audio/%.o:        OPT_FLAGS := -O2 -use_readwrite_const
    $(BUILD_DIR)/src/audio/port_eu.o:  OPT_FLAGS := -O2 -framepointer
    $(BUILD_DIR)/src/audio/external.o:  OPT_FLAGS := -O2 -framepointer
endif

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


$(BUILD_DIR)/$(TARGET).elf: $(COURSE_DATA_TARGETS) $(O_FILES) $(COURSE_MIO0_OBJ_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BUILD_DIR)/src/startup_logo.inc.mio0.o $(BUILD_DIR)/src/trophy_model.inc.mio0.o $(BUILD_DIR)/src/common_textures.inc.mio0.o $(COURSE_MODEL_TARGETS) undefined_syms.txt
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

.PHONY: all clean distclean distclean_assets default diff test load
.SECONDARY:

# Remove built-in rules, to improve  build/us/courses/star_cup/bowsers_castle/model.inc.mio0.performance
MAKEFLAGS += --no-builtin-rules

-include $(DEP_FILES)


print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
