<div align="center">
<p>
 <img width="200" src="dist/musc_logo.svg">
</p>
<h1>The Musc Programming Language</h1>


**The development of this language is in progress!<br>
</div>

- [Roadmap](#roadmap)
- [Example](#example)
- [Usage](#usage)
	- [Help](#help)
	- [Simulation](#simulation)
	- [Compilation](#compilation)
	- [Testing](#testing)
- [Language Reference](#language-reference)
	- [Stack Manipulation](#stack-manipulation)
	- [Comparison](#comparison)
	- [Arithmetic](#arithmetic)
	- [Bitwise](#bitwise)
	- [Control Flow](#control-flow)
		- [if-else condition](#if-else-condition)
		- [while loop](#while-loop)
	- [Memory](#memory)
	- [System](#system)
- [FAQ](#faq)

## Stack-Oriented

A [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming) is one which primarily uses a stack, instead of (or in addition to) named variables, to manage data flow. This concept is closely related to that of [concatenative languages](https://en.wikipedia.org/wiki/Concatenative_programming_language), most of which are stack-based.

## Roadmap
<span style="color: green;">●</span> Compiled ([Compiled language](https://en.wikipedia.org/wiki/Compiled_language))

<span style="color: green;">●</span> Native ([Native](https://en.wikipedia.org/wiki/Native_%28computing%29))

<span style="color: red;">●</span> Turing-complete ([Turing completeness](https://en.wikipedia.org/wiki/Turing_completeness))

<span style="color: red;">●</span> Statically typed ([Static type checking](https://en.wikipedia.org/wiki/Type_system#Static_type_checking))

<span style="color: red;">●</span> Self-hosted (Written in itself, no more Python. [Self-hosting](https://en.wikipedia.org/wiki/Self-hosting_(compilers)))

## Example
Two simple programs:
- the first one prints numbers from 10 to 0 in descending order (multi-line example);
- the second one prints numbers from 0 to 10 in ascending order (one line example);

descending order
```musc
10 while cp -1 > do
	cp =>
	1 -
end
```

ascending order
```
0 while cp 11 < do cp => 1 + end
```

## Usage
### Help
```console
$ ./musc.py -h

Usage: ./musc.py <SUBCOMMAND> [ARGS]

SUBCOMMANDS
     -s           <file>      Simulate the program
     -c [OPTIONS] <file>      Compile the program
     -h                       Print help to STDOUT and exit 0

OPTIONS
     -r                       Run the program after successful compilation
     -o         <file|dir>    Customize the output path
```

### Simulation
The simulation is an interpretation of the program
```console
$ cat ./tests/03_arithmetics.musc
-- 03_arithmetics.musc

-- add
1 2 + =>

-- substract
3 2 - =>
$ ./musc.py -s ./tests/03_arithmetics.musc
3
1
```

### Compilation
The compilation generates assembly code, compiles it with [nasm](https://www.nasm.us/), and then links it with [GNU ld](https://www.gnu.org/software/outpututils/). Both should be available in your `$PATH`.

```console
$ cat ./tests/03_arithmetics.musc
-- 03_arithmetics.musc

-- add
1 2 + =>

-- substract
3 2 - =>
$ ./musc.py -c ./tests/03_arithmetics.musc
[INFO] Generating 03_arithmetics.asm
[CMD] nasm -felf64 tests/03_arithmetics.asm
[CMD] ld -o tests/03_arithmetics tests/03_arithmetics.o
$ ./tests/03_arithmetics
3
1
```

The `-r` subcommand allows you to run the program after successful compilation:

```console
$ ./musc.py -c -r ./tests/03_arithmetics.musc
[INFO] Generating 03_arithmetics.asm
[CMD] nasm -felf64 tests/03_arithmetics.asm
[CMD] ld -o tests/03_arithmetics tests/03_arithmetics.o
[CMD] tests/03_arithmetics
3
1
```

The `-o` subcommand allows you to customize the output path:

```console
$ mkdir output && ./musc.py -c -o output/ ./tests/03_arithmetics.musc
[INFO] Generating 03_arithmetics.asm
[CMD] nasm -felf64 output/03_arithmetics.asm
[CMD] ld -o output/03_arithmetics output/03_arithmetics.o
$ ls output/
03_arithmetics*  03_arithmetics.asm  03_arithmetics.o
```

Or as a file:

```console
$ ./musc.py -c -o ./output ./tests/03_arithmetics.musc
[INFO] Generating output.asm
[CMD] nasm -felf64 ./output.asm
[CMD] ld -o ./output ./output.o
[CMD] ./output
$ ls
output*  output.asm  output.o  dist/  LICENCE  musc.py*  README.md  test.py*  tests/
```

You can chain the `-r` and `-o` subcommands:

```console
$ mkdir output && ./musc.py -c -r -o output/ ./tests/03_arithmetics.musc
[INFO] Generating 03_arithmetics.asm
[CMD] nasm -felf64 output/03_arithmetics.asm
[CMD] ld -o output/03_arithmetics output/03_arithmetics.o
[CMD] output/03_arithmetics
3
1
```

### Testing

Test cases are located in [./tests/](./tests/) folder. The `*.txt` files are the expected outputs of the corresponding programs.

Run [./test.py](./test.py) script with the `-t` subcommand to execute the programs and assert their outputs:

```console
$ ./test.py -t
```

To update expected output files run the `-r` subcommand:

```console
$ ./test.py -r
```

## Language Reference

This is what the language supports so far.

### Stack Manipulation

- `<integer>` - push the integer onto the stack. Right now the integer is anything that is parsable by [int](https://docs.python.org/3/library/functions.html#int) function.
```
a -- a
```
- `cp` - duplicate an element on top of the stack.
```
a -- a a
```

- `=>` - print the element on top of the stack to stdout and remove it from the stack.
```
a b -- a
```

- `~` - swap two elements on the top of the stack.
```
a b -- b a
```

- `#` - drops the top element of the stack.
```
a b -- a
```

- `over` - copy the element below the top of the stack.
```
a b -- a b a
```

### Comparison

- `=` - checks if two elements on top of the stack are equal. Removes the elements from the stack and pushes `1` if they are equal and `0` if they are not.
```
[a: int] [b: int] --> [a == b : bool]
```
- `>` - applies the greater comparison on top two elements.
```
[a: int] [b: int] --> [a > b  : bool]
```
- `<` - applies the less comparison on top two elements.
```
[a: int] [b: int] --> [a < b  : bool]
```

### Arithmetic

- `+` - sums up two elements on the top of the stack.
```
[a: int] [b: int] --> [a + b: int]
```
- `-` - subtracts the top of the stack from the element below.
```
[a: int] [b: int] --> [a - b: int]
```

### Bitwise

- `>>` - right bit shift. 
```
[a: int] [b: int] -- [a >> b: int]
```
- `<<` - left bit shift.
```
[a: int] [b: int] -- [a << b: int]
```
- `|` - bit `or`.
```
[a: int] [b: int] -- [a | b: int]
```
- `&` - bit `and`. 
```
[a: int] [b: int] -- [a | b: int]
```

### Control Flow

#### if-else condition

```
<condition> if
    <body>
else <condition> if
    <body>
else
    <body>
end
```
#### while loop

```
while <condition> do
    <body>
end
```

### Memory

- `mem` - pushes the address of the beginning of the memory where the stack can be read and written.

- `&s` - store a given byte at the given address.

- `&l` - load a byte from the given address.

### System

- `syscall<n>` - perform a syscall with n arguments where n is in range `[1..6]`. (`syscall1`, `syscall2`, ..., `syscall6`)

## FAQ
Why would you use a [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming), and is there any practical advantages of such a paradigm ?

* CPU Time 

* [Memory leak](https://en.wikipedia.org/wiki/Memory_leak) 

* [Fragmentation](https://en.wikipedia.org/wiki/Fragmentation_of_memory) 

* [Locality](https://www.cs.cornell.edu/courses/cs3110/2009fa/Lectures/lec24.html)

([source](https://stackoverflow.com/questions/5589999/why-use-a-stack-oriented-language/45818678#45818678) for full answers)
