IRIX_ROOT := ../ido5.3_compiler

cc: OPT_CFLAGS := -O2
cfe: OPT_CFLAGS := -O2
uopt: OPT_CFLAGS := -O2
ugen: OPT_CFLAGS := -O2
as1: OPT_CFLAGS := -O2
acpp: OPT_CFLAGS := -O2

RECOMP := recomp

# determine host OS for flags
  UNAME_S := $(shell uname -s)
  UNAME_P := $(shell uname -p)

ifeq ($(UNAME_S),Darwin)
  HOST_OS := macOS
else ifeq ($(UNAME_S),Linux)
  HOST_OS := linux
else ifeq ($(OS),Windows_NT)
  HOST_OS := cygwin
else
  $(error Unsupported host OS for Makefile)
endif

CFLAGS := -fno-strict-aliasing -Wno-tautological-compare
CLIBS  := -lm

ifeq ($(HOST_OS),macOS)
  CFLAGS += -Wno-deprecated-declarations
  ifeq (,$(findstring arm,$(shell uname -p)))
    # only add flags on x86_64 macOS
    CFLAGS += -fno-pie
  endif
else
  CFLAGS += -no-pie
endif

ugen_c.c: RECOMP_FLAGS := --conservative

all: cc cfe uopt ugen as1 acpp copt ujoin uld umerge usplit err.english.cc

clean:
	$(RM) cc* cfe* uopt* ugen* as1* acpp* copt* ujoin* uld* umerge* usplit* err.english.cc $(RECOMP) libc_impl.o

$(RECOMP): recomp.cpp
	$(CXX) $^ -o $@ -std=c++11 -O2 -Wno-switch `pkg-config --cflags --libs capstone`

libc_impl.o: libc_impl.c libc_impl.h
	$(CC) $< -c -O2 -DIDO53 $(CFLAGS)

err.english.cc: $(IRIX_ROOT)/usr/lib/err.english.cc
	cp $^ $@

cc_c.c: $(IRIX_ROOT)/usr/bin/cc $(RECOMP)
	./$(RECOMP) $< > $@

%_c.c: $(IRIX_ROOT)/usr/lib/% $(RECOMP)
	./$(RECOMP) $(RECOMP_FLAGS) $< > $@

%: %_c.c libc_impl.o
	$(CC) libc_impl.o $< -o $@ $(OPT_CFLAGS) $(CFLAGS) $(CLIBS)

.PHONY: all clean
.DEFAULT_TARGET := all
