MAKEFLAGS += --silent

default:
	./musc.py -c ./examples/test.mxc;
	./output;
	rm output output.asm output.o; 
