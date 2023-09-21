CPP := g++

CPPFLAGS := -fpermissive

vtx_extract: vtx_extract.cpp libmio0.c libmio0.h utils.c utils.h
	$(CPP) $(CPPFLAGS) -o $@ $^
