# Compiler and compilation flags
CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++11

# Executable name
TARGET := extractor

# Source files
SRCS := main.cpp open_baserom.cpp

# Object files (automatically generated from source files)
OBJS := $(SRCS:.cpp=.o)

# Header files
HEADERS := baserom_extract.hpp

# Libmio0 source file and object file
LIBMIO0_SRC := ../libmio0.c
LIBMIO0_OBJ := ../libmio0.o

# Default target
all: $(TARGET)

# Rule to build the executable
$(TARGET): $(OBJS) $(LIBMIO0_OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS) $(LIBMIO0_OBJ)

# Rule to compile source files into object files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Compile libmio0.c into an object file
$(LIBMIO0_OBJ): $(LIBMIO0_SRC)
	$(CC) -c $< -o $@

# Clean up
clean:
	rm -f $(OBJS) $(TARGET) $(LIBMIO0_OBJ)

.PHONY: all clean
