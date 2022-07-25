MAKEFLAGS += --silent

default:
	./musc.py -c;
	./output;
	rm output output.asm output.o; 
