MAKEFLAGS+=--silent

default: update test clean

update:
	./test.py update output ./euler/ && ./test.py update output ./examples/ && ./test.py update output ./tests/

test:
	/home/b0br4nks/dev/lang/skorpio/test.py && /home/b0br4nks/dev/lang/skorpio/test.py run examples/ && /home/b0br4nks/dev/lang/skorpio/test.py run euler/
	make clean

clean:
	python clean.py tests/ && python clean.py examples/ && python clean.py euler/
