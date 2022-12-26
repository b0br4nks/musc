MAKEFLAGS+=--silent

default: update test clean

update:
	./test.py update output ./euler/ && ./test.py update output ./examples/ && ./test.py update output ./tests/

test:
	./test.py && ./test.py run examples/ && ./test.py run euler/
