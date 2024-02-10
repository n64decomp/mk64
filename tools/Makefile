# Makefile to build tools and recomp

# Compilation flags
CC := gcc
CFLAGS := -I . -Wall -Wextra -Wno-unused-parameter -pedantic -std=c99 -O2 -s

# Tools to compile
PROGRAMS := mio0 n64graphics displaylist_packer n64cksum tkmk00 extract_data_for_mio

MAKE := make

#==============================================================================#
# Source Files and Flags for Each Tool                                         #
#==============================================================================#

n64graphics_SOURCES := n64graphics.c utils.c
n64graphics_CFLAGS  := -DN64GRAPHICS_STANDALONE

displaylist_packer_SOURCES := displaylist_packer.c
displaylist_packer_CFLAGS  := -Wno-unused-result

mio0_SOURCES := libmio0.c
mio0_CFLAGS := -DMIO0_STANDALONE

tkmk00_SOURCES := libtkmk00.c utils.c
tkmk00_CFLAGS := -DTKMK00_STANDALONE

n64cksum_SOURCES := n64cksum.c utils.c
n64cksum_CFLAGS := -DN64CKSUM_STANDALONE

extract_data_for_mio_SOURCES := extract_data_for_mio.c

export PATH := mingw64/bin:$(PATH)

# Build tools and recomp
all: program subsystem

# Build recomp
subsystem:
	[ -z "`find "ido-recomp" -maxdepth 0 -empty`" ] || rm ido-recomp && git clone https://github.com/decompals/ido-static-recomp.git ido-recomp
	$(MAKE) -C ido-recomp RELEASE=1 setup
	$(MAKE) -C ido-recomp RELEASE=1 VERSION=5.3

program: $(PROGRAMS)

# Remove generated files
clean:
	$(RM) $(PROGRAMS)
	$(MAKE) -C ido-recomp clean



#==============================================================================#
# Compile Tools                                                                #
#==============================================================================#

# Compile tools based on the foreach loop
define COMPILE =
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $($1_CFLAGS) $$^ -o $$@
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
