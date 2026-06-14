# Makefile to build tools and recomp

# Compilation flags

MAKE = make

CC      := gcc
CFLAGS  := -I . -Wall -Wextra -Wno-unused-parameter -pedantic -std=c99 -O2 -s
LDFLAGS := -lm

# Tools to compile
PROGRAMS := mio0 n64graphics displaylist_packer n64cksum tkmk00 extract_data_for_mio aiff_extract_codebook aifc_decode tabledesign vadpcm_enc
LIBAUDIOFILE := audiofile/libaudiofile.a

#==============================================================================#
# Source Files and Flags for Each Tool                                         #
#==============================================================================#

n64graphics_SOURCES := n64graphics.c utils.c
n64graphics_CFLAGS  := -DN64GRAPHICS_STANDALONE

displaylist_packer_SOURCES := displaylist_packer.c
displaylist_packer_CFLAGS  := -Wno-unused-result -I ../include -DF3DEX_GBI=1 -D_LANGUAGE_C=1

mio0_SOURCES := libmio0.c
mio0_CFLAGS := -DMIO0_STANDALONE

tkmk00_SOURCES := libtkmk00.c utils.c
tkmk00_CFLAGS := -DTKMK00_STANDALONE

n64cksum_SOURCES := n64cksum.c utils.c
n64cksum_CFLAGS := -DN64CKSUM_STANDALONE

extract_data_for_mio_SOURCES := extract_data_for_mio.c

aifc_decode_SOURCES := aifc_decode.c

aiff_extract_codebook_SOURCES := aiff_extract_codebook.c

tabledesign_SOURCES := sdk-tools/tabledesign/codebook.c sdk-tools/tabledesign/estimate.c sdk-tools/tabledesign/print.c sdk-tools/tabledesign/tabledesign.c
tabledesign_CFLAGS  := -Iaudiofile -Wno-uninitialized
tabledesign_LDFLAGS := -Laudiofile -laudiofile -lstdc++

vadpcm_enc_SOURCES := sdk-tools/adpcm/vadpcm_enc.c sdk-tools/adpcm/vpredictor.c sdk-tools/adpcm/quant.c sdk-tools/adpcm/util.c sdk-tools/adpcm/vencode.c
vadpcm_enc_CFLAGS  := -Wno-unused-result -Wno-uninitialized -Wno-sign-compare -Wno-absolute-value


# Build tools and recomp
all: $(PROGRAMS) torch

torch:
	@echo "Building Torch..."
	$(MAKE) -C torch type=release -j$(N_THREADS)

# Remove generated files
clean:
	$(RM) $(PROGRAMS)
	$(RM) -rf torch/cmake-build-release

$(LIBAUDIOFILE):
	@$(MAKE) -C audiofile

tabledesign: $(LIBAUDIOFILE)

#==============================================================================#
# Compile Tools                                                                #
#==============================================================================#

# Compile tools based on the foreach loop
define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $($1_CFLAGS) $$^ -o $$@ $($1_LDFLAGS) $(LDFLAGS)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))

.PHONY: all clean default torch
