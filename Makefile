# Travis example for Modern C++ by Rafał Pocztarski
# For more languages and info see:
# https://github.com/rsp/travis-hello#readme

CXXFLAGS = -g -Wall -Wfatal-errors -std=c++14 -fprofile-arcs -ftest-coverage

ALL = hello

all: $(ALL)

hello: hello.cpp Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cpp

clean:
	$(RM) $(ALL) *.o

test: all
	bash test
