MAKEFLAGS += --silent

default:
	./musc.py -c ./examples/test.mxc;
	./test;
	rm test test.asm test.o; 
