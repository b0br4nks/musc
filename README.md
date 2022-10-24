<div align="center">
<p>
 <img width="200" src="assets/musc_logo.svg">
</p>
<h1>The Musc Programming Language</h1>


**The development of this language is in progress!<br>
</div>

* [Stack-Oriented](#stack-oriented)
* [Milestones](#milestones)
* [Examples](#examples)
* [Quick Start](#quick-start)
	* [Help](#help)
	* [Simulation](#simulation)
	* [Compilation](#compilation)
	* [Testing](#testing)
	* [Usage](#usage)
* [Language Reference](#language-reference)
	* [Data Types](#data-types)
		* [Integer](#integer)
		* [String](#string)
		* [Character](#character)
	* [Built-in Words](#built-in-words)
		* [Stack Manipulation](#stack-manipulation)
		* [Comparison](#comparison)
		* [Arithmetic](#arithmetic)
		* [Bitwise](#bitwise)
		* [Control Flow](#control-flow)
		* [if-else condition](#if-else-condition)
		* [while loop](#while-loop)
		* [Memory](#memory)
		* [System](#system)
	* [Macros](#macros)
	* [Include](#include)
* [FAQ](#faq)

## Stack-Oriented

A [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming) is one which primarily uses a stack, instead of (or in addition to) named variables, to manage data flow. This concept is closely related to that of [concatenative languages](https://en.wikipedia.org/wiki/Concatenative_programming_language), most of which are stack-based.

## Milestones
<span style="color: green;">●</span> Compiled ([Compiled language](https://en.wikipedia.org/wiki/Compiled_language))

<span style="color: green;">●</span> Native ([Native](https://en.wikipedia.org/wiki/Native_%28computing%29))

<span style="color: green;">●</span> [Turing-complete](./examples/rule_110.musc) ([Turing completeness](https://en.wikipedia.org/wiki/Turing_completeness))

<span style="color: red;">●</span> Statically typed ([Static type checking](https://en.wikipedia.org/wiki/Type_system#Static_type_checking))

<span style="color: red;">●</span> Self-hosted (Written in itself, no more Python. [Self-hosting](https://en.wikipedia.org/wiki/Self-hosting_(compilers)))

## Examples
"Hello, World!":
```v
use "std.musc"

"Hello, World!\n" fmt
```

Two simple programs:
- the first one prints numbers from 10 to 0 in descending order (multi-line example);
- the second one prints numbers from 0 to 10 in ascending order (one line example);

descending order
```v
10 while cp -1 > do
	cp =>
	1 -
end
```

ascending order
```v
0 while cp 11 < do cp => 1 + end
```

## Quick Start
### Help
```console
$ ./musc.py -h

Usage: ./musc.py [OPTIONS] <SUBCOMMAND> [ARGS]

OPTIONS
     -dbg                     Enable debug mode
     -I           <path>      Add the path to the include search list

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
output*  output.asm  output.o  assets/  LICENCE  musc.py*  README.md  test.py*  tests/
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

However, you can choose in which folder the tests should be executed with the `-f` subcommand:
```console
$ ./test.py -f <folder>
```

Run [./test.py](./test.py) script with the `-h` subcommand to print more info on the stdout (default, if no subcommand is provided):
```console
Usage: ./test.py [OPTIONS] [SUBCOMMAND]
OPTIONS:
    -f <folder> Folder with the tests. (Default: ./tests/)
SUBCOMMANDS:
    -t          Run the tests. 
    -r          Record expected output of the tests.
    -c          Clean the directory.
    -h          Print this message to stdout and exit with 0 code.(Default when no subcommand is provided)
```

Run [./test.py](./test.py) script with the `-t` subcommand to execute the programs and assert their outputs:

```console
$ ./test.py -t
```

To update expected output files run the `-r` subcommand:
```console
$ ./test.py -r
```

The [./examples/](./examples/) folder contains programs that are meant for showcasing the language rather then testing it:
```console
$ ./test.py -f ./examples/ -r
```

To clean the folder from the `*.asm` `*.o` and `binary* (ELF 64-bit LSB executable)`, you can run the `-c` subcommand:
```console
$ ./test.py -c
$ ./test.py -f ./examples/ -c
```

### Usage

If you wanna use the Musc compiler separately from its codebase you only need two things:
- [./musc.py](./musc.py) - the compiler itself,
- [./std/](./std/) - the standard library.

By default the compiler searches files to include in `./` and `./std/`. You can add more search paths via the `-I` flag before the subcommand: `./musc.py -I <custom-path> -r ...`. See `./musc.py help` for more info.



## Language Reference

This is what the language supports so far.

### Data Types

#### Integer

Currently an integer is anything that is parsable by [int](https://docs.python.org/3/library/functions.html#int) function of Python. When the compiler encounters an integer it pushes it onto the data stack for processing by the relevant operations.

Example:
```pascal
1 2 +
```

The code above pushes 1 and 2 onto the data stack and sums them up with `+` operation.

#### String

Currently a string is any sequence of bytes sandwiched between two `"`. No newlines inside of the strings are allowed. Escaping is done by [unicode_escape codec](https://docs.python.org/3/library/codecs.html#text-encodings) of Python. No way to escape `"` themselves for now. No special support for Unicode is provided right now too, it's just a sequence of bytes.

When the compiler encounters a string:
1. the size of the string in bytes is pushed onto the data stack,
2. the bytes of the string are copied somewhere into the memory (the exact location is implementation specific),
3. the pointer to the beginning of the string is pushed onto the data stack.

Thus, a single string pushes two values onto the data stack: the size and the pointer.

Example:
```
use "std.musc"

"Hello, World!\n" fmt
```

The `fmt` macro from `std.musc` module expects two values on the data stack: the size of the buffer it needs to print to stdout and the pointer to the beginning of the buffer. Both of the values are provided by the string `"Hello, World!\n"`.

#### Character

Currently a character is a single byte sandwiched between two `'`. Escaping is done by [unicode_escape codec](https://docs.python.org/3/library/codecs.html#text-encodings) of Python. No way to escape `'` themselves for now. No special support for Unicode is provided right now too.

When compiler encounters a character it pushes its value as an integer onto the stack.

Example:

```
'X' =>
```

This program pushes integer `88` onto the stack (since the ASCII code of letter `X` is `88`) and prints it with the `=>` operation.


### Built-in Words

#### Stack Manipulation

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

#### Comparison

- `=` - checks if two elements on top of the stack are equal. Removes the elements from the stack and pushes `1` if they are equal and `0` if they are not.
```c
[a: int] [b: int] -- [a == b : bool]
```
- `!=` - checks if two elements on top of the stack are not equal.
```c
[a: int] [b: int] -- [a != b : bool]
```
- `>` - applies the greater comparison on top two elements.
```c
[a: int] [b: int] -- [a > b  : bool]
```
- `<` - applies the less comparison on top two elements.
```c
[a: int] [b: int] -- [a < b  : bool]
```
- `>=` - applies the greater or equal comparison on top two elements.
```c
[a: int] [b: int] -- [a >= b : bool]
```
- `<=` - applies the less or equal comparison on top two elements.
```c
[a: int] [b: int] -- [a <= b : bool]
```

#### Arithmetic

- `+` - sums up two elements on the top of the stack.
```c
[a: int] [b: int] -- [a + b: int]
```
- `-` - subtracts the top of the stack from the element below.
```c
[a: int] [b: int] -- [a - b: int]
```
- `*` - multiples two elements on top of the stack.
```c
[a: int] [b: int] -- [a * b: int]
```
- `mod` - perform [Euclidean division](https://en.wikipedia.org/wiki/Euclidean_division) between two elements on top of the stack.
```c
[a: int] [b: int] -- [a / b: int] [a % b: int]
```

#### Bitwise

- `>>` - right bit shift. 
```c
[a: int] [b: int] -- [a >> b: int]
```
- `<<` - left bit shift.
```c
[a: int] [b: int] -- [a << b: int]
```
- `or` - bit `or`.
```c
[a: int] [b: int] -- [a | b: int]
```
- `&` - bit `and`. 
```c
[a: int] [b: int] -- [a & b: int]
```

#### Control Flow

#### if-else condition

```c
<condition> if
    <body>
else <condition> if
    <body>
else
    <body>
end
```
#### while loop

```v
while <condition> do
    <body>
end
```

#### Memory

- `mem` - pushes the address of the beginning of the memory where the stack can be read and written.

- `&s` - store a given byte at the given address.

- `&l` - load a byte from the given address.

#### System

- `sys<n>` - perform a syscall with n arguments where n is in range `[0..6]`. (`sys0`, `sys1`, ..., `sys6`)

### Macros

Define a new `<keyword>` that expands into a sequence of `<tokens>` during the compilation.

An example with the keyword `fmt` and as tokens `1 1 sys3`:
```v
macro fmt
	1 1 sys3
end

"Hello, World!\n" fmt

-- returns "Hello, World!"
```

### Include

Include tokens of file `file.musc`
```v
use "file.musc"
```

## FAQ
Why would you use a [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming), and is there any practical advantages of such a paradigm ?

* CPU Time 

* [Memory leak](https://en.wikipedia.org/wiki/Memory_leak) 

* [Fragmentation](https://en.wikipedia.org/wiki/Fragmentation_of_memory) 

* [Locality](https://www.cs.cornell.edu/courses/cs3110/2009fa/Lectures/lec24.html)

([source](https://stackoverflow.com/questions/5589999/why-use-a-stack-oriented-language/45818678#45818678) for full answers)
