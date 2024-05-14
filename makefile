# project name (generate executable with this name)
TEST_TARGET = tester
# .cpp files that do not contain a main() function.
SOURCES = functions.cpp

CPP = g++ --std=c++11 -c
# compiling flags here
CPPFLAGS   = -Wall -I. -g

LINKER   = g++ -o
# linking flags here
LFLAGS   = -Wall

# SOURCES  := $(wildcard *.cpp)
INCLUDES := $(wildcard *.h)
OBJECTS  := $(SOURCES:.cpp=.o)
rm       = rm -f

.PHONY: obj clean all

all: $(TEST_TARGET)

$(TEST_TARGET): obj tests.o
	$(LINKER) $(TEST_TARGET) $(LFLAGS) $(OBJECTS) tests.o
	@echo "Linking complete!"

obj: $(SOURCES) $(INCLUDES) tests.cpp
	$(CPP) $(CPPFLAGS) $(SOURCES) tests.cpp
	@echo "Compilation complete!"

clean:
	@$(rm) $(OBJECTS) $(TEST_TARGET) tests.o
	@echo "Cleanup complete!"