# Makefile to rebuild MK64 split image

include util.mk

# Default target
default: all

# Preprocessor definitions
DEFINES :=

#==============================================================================#
# Build Options                                                                #
#==============================================================================#

# Configure the build options with 'make SETTING=value' (ex. make VERSION=eu).
# Run 'make clean' prior to changing versions.

# Build for the N64 (turn this off for ports)
TARGET_N64 ?= 1

# COMPILER - selects the C compiler to use
#   ido - uses the SGI IRIS Development Option compiler, which is used to build
#         an original matching N64 ROM
#   gcc - uses the GNU C Compiler
COMPILER ?= ido
$(eval $(call validate-option,COMPILER,ido gcc))



# VERSION - selects the version of the game to build
#   us - builds the 1997 North American version
#   eu - builds the 1997 1.1 PAL version
VERSION ?= us
$(eval $(call validate-option,VERSION,us eu))

ifeq      ($(VERSION),us)
  DEFINES += VERSION_US=1
  GRUCODE   ?= f3d_old
  VERSION_ASFLAGS := --defsym VERSION_US=1
else ifeq ($(VERSION), eu)
  DEFINES += VERSION_EU=1 
  GRUCODE   ?= f3d_old
  VERSION_ASFLAGS := --defsym VERSION_EU=1
endif

TARGET := mk64.$(VERSION)

BASEROM := baserom.$(VERSION).z64



# GRUCODE - selects which RSP microcode to use.
#   f3d_old - default, version 0.95. An early version of f3d.
#   f3dex2  - A newer, unsupported version
# Note that 3/4 player mode uses F3DLX
$(eval $(call validate-option,GRUCODE,f3d_old f3dex2))

ifeq ($(GRUCODE), f3dex2) # Fast3DEX2
  DEFINES += F3DEX_GBI_2 F3DEX_GBI_SHARED=1
else
  DEFINES += F3DEX_GBI=1 F3D_OLD=1
endif



# USE_QEMU_IRIX - when ido is selected, select which way to emulate IRIX programs
#   1 - use qemu-irix
#   0 - statically recompile the IRIX programs
USE_QEMU_IRIX ?= 0
$(eval $(call validate-option,USE_QEMU_IRIX,0 1))

ifeq      ($(COMPILER),ido)
  ifeq ($(USE_QEMU_IRIX),1)
  # Verify that qemu-irix exists
  QEMU_IRIX := $(call find-command,qemu-irix)
  ifeq (,$(QEMU_IRIX))
    $(error Using the IDO compiler requires qemu-irix. Please install qemu-irix package or set the QEMU_IRIX environment variable to the full qemu-irix binary path)
    endif
  endif

  MIPSISET := -mips2
else ifeq ($(COMPILER),gcc)
  NON_MATCHING := 1
  MIPSISET     := -mips3
endif



# NON_MATCHING - whether to build a matching, identical copy of the ROM
#   1 - enable some alternate, more portable code that does not produce a matching ROM
#   0 - build a matching ROM
NON_MATCHING ?= 0
$(eval $(call validate-option,NON_MATCHING,0 1))

ifeq ($(TARGET_N64),0)
  NON_MATCHING := 1
endif

ifeq ($(NON_MATCHING),1)
  DEFINES += NON_MATCHING=1 AVOID_UB=1
  COMPARE := 0
endif



# COMPARE - whether to verify the SHA-1 hash of the ROM after building
#   1 - verifies the SHA-1 hash of the selected version of the game
#   0 - does not verify the hash
COMPARE ?= 1
$(eval $(call validate-option,COMPARE,0 1))



# Whether to hide commands or not
VERBOSE ?= 0
ifeq ($(VERBOSE),0)
  V := @
endif



# Whether to colorize build messages
COLOR ?= 1



# display selected options unless 'make clean' or 'make distclean' is run
ifeq ($(filter clean distclean,$(MAKECMDGOALS)),)
  $(info ==== Build Options ====)
  $(info Version:        $(VERSION))
  $(info Microcode:      $(GRUCODE))
  $(info Target:         $(TARGET))
  ifeq ($(COMPARE),1)
    $(info Compare ROM:    yes)
  else
    $(info Compare ROM:    no)
  endif
  ifeq ($(NON_MATCHING),1)
    $(info Build Matching: no)
  else
    $(info Build Matching: yes)
  endif
  $(info =======================)
endif


#==============================================================================#
# Universal Dependencies                                                       #
#==============================================================================#

TOOLS_DIR := tools

# (This is a bit hacky, but a lot of rules implicitly depend
# on tools and assets, and we use directory globs further down
# in the makefile that we want should cover assets.)

PYTHON := python3

ifeq ($(filter clean distclean print-%,$(MAKECMDGOALS)),)

# Make sure assets exist
  NOEXTRACT ?= 0
  ifeq ($(NOEXTRACT),0)
    DUMMY != $(PYTHON) extract_assets.py $(VERSION) >&2 || echo FAIL
    ifeq ($(DUMMY),FAIL)
      $(error Failed to extract assets)
    endif
  endif

  # Make tools if out of date
  DUMMY != make -s -C $(TOOLS_DIR) $(if $(filter-out ido0,$(COMPILER)$(USE_QEMU_IRIX)),all-except-recomp,) >&2 || echo FAIL
  ifeq ($(DUMMY),FAIL)
    $(error Failed to build tools)
  endif
  $(info Building ROM...)

endif


#==============================================================================#
# Target Executable and Sources                                                #
#==============================================================================#

BUILD_DIR_BASE := build
# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR      := $(BUILD_DIR_BASE)/$(VERSION)
ROM            := $(BUILD_DIR)/$(TARGET).z64
ELF            := $(BUILD_DIR)/$(TARGET).elf
LD_SCRIPT      := mk64.ld
ASSET_DIR      := assets
BIN_DIR        := bin
DATA_DIR       := data
INCLUDE_DIRS   := include

# Directories containing source files
SRC_DIRS       := src src/audio src/os src/os/math courses
ASM_DIRS       := asm asm/audio asm/os asm/os/non_matchings $(DATA_DIR) $(DATA_DIR)/sound_data $(DATA_DIR)/karts


# Directories containing course source and data files
COURSE_DIRS := $(shell find courses -mindepth 2 -type d)
TEXTURES_DIR = textures
TEXTURE_DIRS := textures/common

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(COURSE_DIRS) include $(ASM_DIRS) $(ALL_KARTS_DIRS) $(TEXTURES_DIR)/raw \
	$(TEXTURES_DIR)/standalone $(TEXTURES_DIR)/startup_logo $(TEXTURES_DIR)/crash_screen $(TEXTURES_DIR)/trophy $(TEXTURES_DIR)/courses        \
	$(TEXTURES_DIR)/courses/tlut $(TEXTURES_DIR)/courses/tlut2 $(TEXTURE_DIRS) $(TEXTURE_DIRS)/tlut $(TEXTURES_DIR)/courses/tlut3              \
	$(TEXTURE_DIRS)/tlut2 $(BIN_DIR))

# file dependencies generated by splitter
MAKEFILE_SPLIT = Makefile.split
include $(MAKEFILE_SPLIT)

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

# Files with GLOBAL_ASM blocks
GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/*.c)
GLOBAL_ASM_AUDIO_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/audio/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))
GLOBAL_ASM_AUDIO_O_FILES = $(foreach file,$(GLOBAL_ASM_AUDIO_C_FILES),$(BUILD_DIR)/$(file:.c=.o))



#==============================================================================#
# Compiler Options                                                             #
#==============================================================================#

# detect prefix for MIPS toolchain
ifneq      ($(call find-command,mips-linux-gnu-ld),)
  CROSS := mips-linux-gnu-
else ifneq ($(call find-command,mips64-linux-gnu-ld),)
  CROSS := mips64-linux-gnu-
else ifneq ($(call find-command,mips64-elf-ld),)
  CROSS := mips64-elf-
else
  $(error Unable to detect a suitable MIPS toolchain installed)
endif

AS      := $(CROSS)as
ifeq ($(COMPILER),gcc)
  CC      := $(CROSS)gcc
else
  ifeq ($(USE_QEMU_IRIX),1)
    IRIX_ROOT := $(TOOLS_DIR)/ido5.3_compiler
    CC      := $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc
  else
    IDO_ROOT := $(TOOLS_DIR)/ido5.3_recomp
    CC      := $(IDO_ROOT)/cc
  endif
endif
LD      := $(CROSS)ld
AR      := $(CROSS)ar
OBJDUMP := $(CROSS)objdump
OBJCOPY := $(CROSS)objcopy

OPT_FLAGS := -O2

ifeq ($(TARGET_N64),1)
  TARGET_CFLAGS := -nostdinc -DTARGET_N64 -D_LANGUAGE_C
  CC_CFLAGS := -fno-builtin
endif

INCLUDE_DIRS := include $(BUILD_DIR) $(BUILD_DIR)/include src .
ifeq ($(TARGET_N64),1)
  INCLUDE_DIRS += include/libc
endif

C_DEFINES := $(foreach d,$(DEFINES),-D$(d))
DEF_INC_CFLAGS := $(foreach i,$(INCLUDE_DIRS),-I$(i)) $(C_DEFINES)

# Prefer clang as C preprocessor if installed on the system
ifneq (,$(call find-command,clang))
  CPP      := clang
  CPPFLAGS := -E -P -x c -Wno-trigraphs $(DEF_INC_CFLAGS)
else
  CPP      := cpp
  CPPFLAGS := -P -Wno-trigraphs $(DEF_INC_CFLAGS)
endif

# Check code syntax with host compiler
CC_CHECK := gcc
CC_CHECK_CFLAGS := -fsyntax-only -fsigned-char $(CC_CFLAGS) $(TARGET_CFLAGS) -std=gnu90 -Wall -Wempty-body -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB $(DEF_INC_CFLAGS)

# C compiler options
HIDE_WARNINGS := -woff 838,649
CFLAGS = -G 0 $(OPT_FLAGS) $(TARGET_CFLAGS) $(MIPSISET) $(DEF_INC_CFLAGS)
ifeq ($(COMPILER),gcc)
  CFLAGS += -mno-shared -march=vr4300 -mfix4300 -mabi=32 -mhard-float -mdivide-breaks -fno-stack-protector -fno-common -fno-zero-initialized-in-bss -fno-PIC -mno-abicalls -fno-strict-aliasing -fno-inline-functions -ffreestanding -fwrapv -Wall -Wextra
else
  CFLAGS += $(HIDE_WARNINGS) -non_shared -Wab,-r4300_mul -Xcpluscomm -Xfullwarn -signed -32
endif

ASFLAGS = -march=vr4300 -mabi=32 -I include -I $(BUILD_DIR) --defsym F3DEX_GBI=1

# Fills end of rom
OBJCOPYFLAGS = --pad-to=0xC00000 --gap-fill=0xFF

LDFLAGS = -T undefined_syms.txt -T $(BUILD_DIR)/$(LD_SCRIPT) -Map $(BUILD_DIR)/$(TARGET).map --no-check-sections

ifeq ($(shell getconf LONG_BIT), 32)
  # Work around memory allocation bug in QEMU
  export QEMU_GUEST_BASE := 1
else
  # Ensure that gcc treats the code as 32-bit
  CC_CHECK += -m32
endif

# Prevent a crash with -sopt
export LANG := C

#==============================================================================#
# Miscellaneous Tools                                                          #
#==============================================================================#

MIO0TOOL              := $(TOOLS_DIR)/mio0
N64CKSUM              := $(TOOLS_DIR)/n64cksum
N64GRAPHICS           := $(TOOLS_DIR)/n64graphics
DLPACKER              := $(TOOLS_DIR)/displaylist_packer
DLSYMGEN              := $(PYTHON) $(TOOLS_DIR)/generate_segment_headers.py
MODELSYMGEN           := $(PYTHON) $(TOOLS_DIR)/generate_vertice_count.py
BIN2C                 := $(PYTHON) $(TOOLS_DIR)/bin2c.py
EXTRACT_DATA_FOR_MIO  := $(TOOLS_DIR)/extract_data_for_mio
ASSET_EXTRACT         := $(PYTHON) $(TOOLS_DIR)/new_extract_assets.py
EMULATOR               = mupen64plus
EMU_FLAGS              = --noosd
LOADER                 = loader64
LOADER_FLAGS           = -vwf
SHA1SUM                = sha1sum
PRINT                  = printf

ifeq ($(COLOR),1)
NO_COL  := \033[0m
RED     := \033[0;31m
GREEN   := \033[0;32m
BLUE    := \033[0;34m
YELLOW  := \033[0;33m
BLINK   := \033[33;5m
endif

# Use Objcopy instead of extract_data_for_mio
ifeq ($(COMPILER),gcc)
  EXTRACT_DATA_FOR_MIO := $(OBJCOPY) -O binary --only-section=.data
endif

# Common build print status function
define print
  @$(PRINT) "$(GREEN)$(1) $(YELLOW)$(2)$(GREEN) -> $(BLUE)$(3)$(NO_COL)\n"
endef



#==============================================================================#
# Main Targets                                                                 #
#==============================================================================#

all: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1SUM) -c $(TARGET).sha1
endif

clean:
	$(RM) -r $(BUILD_DIR)

distclean: distclean_assets
	$(RM) -r $(BUILD_DIR_BASE)
	./extract_assets.py --clean
	make -C tools clean

test: $(ROM)
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(ROM)
	$(LOADER) $(LOADER_FLAGS) $<

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)



#==============================================================================#
# Texture Generation                                                           #
#==============================================================================#

# RGBA32, RGBA16, IA16, IA8, IA4, IA1, I8, I4
$(BUILD_DIR)/%: %.png
	$(N64GRAPHICS) -i $@ -g $< -f $(lastword $(subst ., ,$@))

$(BUILD_DIR)/textures/%.mio0: $(BUILD_DIR)/textures/%
	$(MIO0TOOL) -c $< $@



#==============================================================================#
# Compressed Segment Generation                                                #
#==============================================================================#

$(BUILD_DIR)/%.mio0: %.bin
	@$(PRINT) "$(GREEN)Compressing binary files:  $(BLUE)$@ $(NO_COL)\n"
	$(MIO0TOOL) -c $< $@

$(BUILD_DIR)/%.mio0.o: $(BUILD_DIR)/%.mio0.s
	@$(PRINT) "$(GREEN)Compiling mio0:  $(BLUE)$@ $(NO_COL)\n"
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.mio0.s: $(BUILD_DIR)/%.mio0
	@$(PRINT) "$(GREEN)Generating mio0 asm:  $(BLUE)$@ $(NO_COL)\n"
	printf ".section .data\n\n.balign 4\n\n.incbin \"$<\"\n" > $@

$(BUILD_DIR)/src/crash_screen.o: src/crash_screen.c
	@$(PRINT) "$(GREEN)Compiling Crash Screen:  $(BLUE)$@ $(NO_COL)\n"
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/crash_screen/crash_screen_font.ia1.inc.c -g textures/crash_screen/crash_screen_font.ia1.png -f ia1 -s u8
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/src/trophy_model.inc.o: src/trophy_model.inc.c
	@$(PRINT) "$(GREEN)Compiling Trophy Model:  $(BLUE)$@ $(NO_COL)\n"
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_brass.rgba16.inc.c -g textures/trophy/reflection_map_brass.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_silver.rgba16.inc.c -g textures/trophy/reflection_map_silver.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/reflection_map_gold.rgba16.inc.c -g textures/trophy/reflection_map_gold.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium1.rgba16.inc.c -g textures/trophy/podium1.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium2.rgba16.inc.c -g textures/trophy/podium2.rgba16.png -f rgba16 -s u8
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/trophy/podium3.rgba16.inc.c -g textures/trophy/podium3.rgba16.png -f rgba16 -s u8
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/src/startup_logo.inc.o: src/startup_logo.inc.c
	@$(PRINT) "$(GREEN)Compiling Startup Logo:  $(BLUE)$@ $(NO_COL)\n"
	$(N64GRAPHICS) -i $(BUILD_DIR)/textures/startup_logo/reflection_map_gold.rgba16.inc.c -g textures/startup_logo/reflection_map_gold.rgba16.png -f rgba16 -s u8
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@



#==============================================================================#
# Compressed Segment Generation                                                #
#==============================================================================#

ASSET_INCLUDES := $(shell find $(ASSET_DIR)/include -type f -name *.mk)
ASSET_DIRECTORIES :=

$(foreach inc,$(ASSET_INCLUDES),$(eval include $(inc)))

distclean_assets:
	rm -rf $(ASSET_DIRECTORIES)



#==============================================================================#
# Common Textures Segment Generation                                           #
#==============================================================================#

TEXTURE_FILES := $(foreach dir,$(TEXTURE_DIRS),$(subst .png, , $(wildcard $(dir)/*)))

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
	@$(PRINT) "$(GREEN)Compiling Common Textures:  $(BLUE)$@ $(NO_COL)\n"
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

	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@



#==============================================================================#
# Course Packed Displaylists and Geography Generation                          #
#==============================================================================#

# todo: Fix DLSYMGEN & MODELSYMGEN scripts

COURSE_MODEL_TARGETS := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/model.inc.mio0.o)
COURSE_PACKED_DL := $(foreach dir,$(COURSE_DIRS),$(BUILD_DIR)/$(dir)/packed_dl.inc.bin)

$(COURSE_PACKED_DL):
	$(LD) -t -e 0 -Ttext=07000000 -Map $(@D)/packed.inc.elf.map -o $(@D)/packed.inc.elf $(@D)/packed.inc.o --no-check-sections
# Generate header for packed displaylists
#   $(DLSYMGEN)
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/packed.inc.elf $(@D)/packed.inc.bin
	$(DLPACKER) $(@D)/packed.inc.bin $(@D)/packed_dl.inc.bin

# Elf the course data to include symbol addresses then convert to binary and compress to mio0. The mio0 file is converted to an object file so that the linker can link it.
$(COURSE_MODEL_TARGETS) : $(BUILD_DIR)/%/model.inc.mio0.o : %/model.inc.c $(COURSE_PACKED_DL)
	@$(PRINT) "$(GREEN)Compressing Course Geography and Packed Displaylists:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) -t -e 0 -Ttext=0F000000 -Map $(@D)/model.inc.elf.map -o $(@D)/model.inc.elf $(@D)/model.inc.o --no-check-sections
# Generate model vertice count header
#	$(MODELSYMGEN)
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/model.inc.elf $(@D)/model.inc.bin
	$(MIO0TOOL) -c $(@D)/model.inc.bin $(@D)/model.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"$(@D)/model.inc.mio0\"\n\n.balign 4\n\nglabel d_course_$(lastword $(subst /, ,$*))_packed\n\n.incbin \"$(@D)/packed_dl.inc.bin\"\n\n.balign 0x10\n" > $(@D)/model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $@ $(@D)/model.inc.mio0.s



#==============================================================================#
# Course Data Generation                                                       #
#==============================================================================#

COURSE_TEXTURE_FILES := $(foreach dir,textures/courses,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT := $(foreach dir,textures/courses/tlut,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT2 := $(foreach dir,textures/courses/tlut2,$(subst .png, , $(wildcard $(dir)/*)))
COURSE_TLUT3 := $(foreach dir,textures/courses/tlut3,$(subst .png, , $(wildcard $(dir)/*)))

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
	@$(PRINT) "$(GREEN)Compiling Course Data:  $(BLUE)$@ $(NO_COL)\n"
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(COURSE_DATA_TARGETS): $(BUILD_DIR)/%/course_data.inc.mio0.o: $(BUILD_DIR)/%/course_data.inc.o
# todo: Clean this up if possible. Not really worth the time though.
	@$(PRINT) "$(GREEN)Compressing Course Data:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) -t -e 0 -Ttext=06000000 -Map $(@D)/course_data.inc.elf.map -o $(@D)/course_data.inc.elf $(@D)/course_data.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(@D)/course_data.inc.elf $(@D)/course_data.inc.bin
	$(MIO0TOOL) -c $(@D)/course_data.inc.bin $(@D)/course_data.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"$(@D)/course_data.inc.mio0\"\n\n" > $(@D)/course_data.inc.mio0.s
	$(AS) $(ASFLAGS) -o $@ $(@D)/course_data.inc.mio0.s



#==============================================================================#
# Source Code Generation                                                       #
#==============================================================================#

$(BUILD_DIR)/%.o: %.c
	$(call print,Compiling:,$<,$@)
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<
	$(PYTHON) tools/set_o32abi_bit.py $@

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.c
	$(call print,Compiling:,$<,$@)
	@$(CC_CHECK) $(CC_CHECK_CFLAGS) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.s $(MIO0_FILES) $(RAW_TEXTURE_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(GLOBAL_ASM_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

$(GLOBAL_ASM_AUDIO_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT) #repeat for other files
	$(CPP) $(CPPFLAGS) $(DEF_INC_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<



#==============================================================================#
# Libultra Definitions                                                         #
#==============================================================================#

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

#==============================================================================#
# Compress Segmented Data                                                      #
#==============================================================================#

# trophy_model.inc.c
$(BUILD_DIR)/src/trophy_model.inc.mio0.o: $(BUILD_DIR)/src/trophy_model.inc.o
	@$(PRINT) "$(GREEN)Compressing Trophy Model:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) -t -e 0 -Ttext=0B000000 -Map $(BUILD_DIR)/src/trophy_model.inc.elf.map -o $(BUILD_DIR)/src/trophy_model.inc.elf $(BUILD_DIR)/src/trophy_model.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/trophy_model.inc.elf $(BUILD_DIR)/src/trophy_model.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/trophy_model.inc.bin $(BUILD_DIR)/src/trophy_model.inc.mio0
	printf ".include \"macros.inc\"\n\n.data\n\n.balign 4\n\nglabel trophy_model\n\n.incbin \"build/us/src/trophy_model.inc.mio0\"\n\n.balign 16\nglabel data_821D10_end\n" > build/us/src/trophy_model.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/trophy_model.inc.mio0.o $(BUILD_DIR)/src/trophy_model.inc.mio0.s

# startup_logo.inc.c
$(BUILD_DIR)/src/startup_logo.inc.mio0.o: src/startup_logo.inc.c
	@$(PRINT) "$(GREEN)Compressing Startup Logo:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) -t -e 0 -Ttext=06000000 -Map $(BUILD_DIR)/src/startup_logo.inc.elf.map -o $(BUILD_DIR)/src/startup_logo.inc.elf $(BUILD_DIR)/src/startup_logo.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/startup_logo.inc.elf $(BUILD_DIR)/src/startup_logo.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/startup_logo.inc.bin $(BUILD_DIR)/src/startup_logo.inc.mio0
	printf ".include \"macros.inc\"\n\n.data\n\n\n\n.balign 4\n\n\nglabel startup_logo\n\n.incbin \"build/us/src/startup_logo.inc.mio0\"\n\n.balign 16\n\nglabel data_825800_end\n" > build/us/src/startup_logo.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/startup_logo.inc.mio0.o $(BUILD_DIR)/src/startup_logo.inc.mio0.s

# common_textures.inc.c
$(BUILD_DIR)/src/common_textures.inc.mio0.o: $(BUILD_DIR)/src/common_textures.inc.o
	@$(PRINT) "$(GREEN)Compressing Common Textures:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) -t -e 0 -Ttext=0D000000 --unresolved-symbols=ignore-all -Map $(BUILD_DIR)/src/common_textures.inc.elf.map -o $(BUILD_DIR)/src/common_textures.inc.elf $(BUILD_DIR)/src/common_textures.inc.o --no-check-sections
	$(V)$(EXTRACT_DATA_FOR_MIO) $(BUILD_DIR)/src/common_textures.inc.elf $(BUILD_DIR)/src/common_textures.inc.bin
	$(MIO0TOOL) -c $(BUILD_DIR)/src/common_textures.inc.bin $(BUILD_DIR)/src/common_textures.inc.mio0
	printf ".include \"macros.inc\"\n\n.section .data\n\n.balign 4\n\n.incbin \"src/common_textures.inc.mio0\"\n\n" > build/us/src/common_textures.inc.mio0.s
	$(AS) $(ASFLAGS) -o $(BUILD_DIR)/src/common_textures.inc.mio0.o $(BUILD_DIR)/src/common_textures.inc.mio0.s

# todo: Make this work
# Run linker script through the C preprocessor
#$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
#	$(call print,Preprocessing linker script:,$<,$@)
#	$(V)$(CPP) $(CPPFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<

# Link MK64 ELF file
$(ELF): $(COURSE_DATA_TARGETS) $(O_FILES) $(COURSE_MIO0_OBJ_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BUILD_DIR)/src/startup_logo.inc.mio0.o $(BUILD_DIR)/src/trophy_model.inc.mio0.o $(BUILD_DIR)/src/common_textures.inc.mio0.o $(COURSE_MODEL_TARGETS) undefined_syms.txt
	@$(PRINT) "$(GREEN)Linking ELF file:  $(BLUE)$@ $(NO_COL)\n"
	$(LD) $(LDFLAGS) -o $@

# Build ROM
$(ROM): $(ELF)
	$(call print,Building ROM:,$<,$@)
	$(OBJCOPY) $(OBJCOPYFLAGS) $< $(@:.z64=.bin) -O binary
	$(N64CKSUM) $(@:.z64=.bin) $@

$(BUILD_DIR)/$(TARGET).hex: $(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(ELF) 
	$(OBJDUMP) -D $< > $@


.PHONY: all clean distclean distclean_assets default diff test load
# with no prerequisites, .SECONDARY causes no intermediate target to be removed
.SECONDARY:

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

-include $(DEP_FILES)


print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
