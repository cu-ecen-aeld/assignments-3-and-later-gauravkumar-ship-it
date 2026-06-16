###############
## VARIABLES ##
###############
# Note: Variables can only be strings
# Note: Single or double quotes for variable names or values have no meaning to Make

# CC: Program for compiling C programs; default cc
# CXX: Program for compiling C++ programs; default g++
# CFLAGS: Extra flags to give to the C compiler
# CXXFLAGS: Extra flags to give to the C++ compiler
# CPPFLAGS: Extra flags to give to the C preprocessor
# LDFLAGS: Extra flags to give to the linker

DEBUG = 1
EXECUTABLE_NAME = writer
ARCH ?= arm64
CROSS_COMPILE ?= aarch64-none-linux-gnu-

#CXX_STANDARD = c++17
CC_WARNINGS = -Wall -Wextra -Wpedantic
CC = $(CROSS_COMPILE)gcc
CC_FLAGS = $(CXX_WARNINGS)
LDFLAGS =

ifeq ($(DEBUG), 1)
CC_FLAGS += -g -O0
else
CC_FLAGS += -O3
endif

COMPILER_CALL = $(CC) $(CC_FLAGS)

build: writer.o
	$(COMPILER_CALL) writer.o $(LDFLAGS) -o $(EXECUTABLE_NAME)

writer.o:
	$(COMPILER_CALL) writer.c -c

execute:
	./writer

clean:
	rm -f *.o
	rm -f writer
