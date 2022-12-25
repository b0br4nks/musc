<div align="center">
<p>
 <img width="200" src="assets/skorpio_logo_bw.png">
</p>
<h1>The Skorpio Programming Language</h1>


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
	* [Functions](#functions)
	* [Include](#include)
* [FAQ](#faq)

## Stack-Oriented

A [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming) is one which primarily uses a stack, instead of (or in addition to) named variables, to manage data flow. This concept is closely related to that of [concatenative languages](https://en.wikipedia.org/wiki/Concatenative_programming_language), most of which are stack-based.

## Milestones
<span style="color: green;">●</span> Compiled ([Compiled language](https://en.wikipedia.org/wiki/Compiled_language))

<span style="color: green;">●</span> Native ([Native](https://en.wikipedia.org/wiki/Native_%28computing%29))

<span style="color: green;">●</span> [Turing-complete](./examples/rule_110.sko) ([Turing completeness](https://en.wikipedia.org/wiki/Turing_completeness))

<span style="color: green;">●</span> Statically typed ([Static type checking](https://en.wikipedia.org/wiki/Type_system#Static_type_checking))

<span style="color: red;">●</span> Self-hosted (Written in itself, no more Python. [Self-hosting](https://en.wikipedia.org/wiki/Self-hosting_(compilers)))

## Examples
"Hello, World!":
```v
use <std.sko>

"Hello, World!\n" fmt
```

Two simple programs:
- the first one prints numbers from 10 to 0 in descending order (multi-line example);
- the second one prints numbers from 0 to 10 in ascending order (one line example);

descending order
```v
use <std.sko>

10 while cp -1 > do
	cp =>
	1 -
end !
```

ascending order
```v
use <std.sko>

0 while cp 11 < do cp => 1 + end !
```

## Quick Start
### Help
```console
$ ./skorpio.py -h

Usage: ./skorpio.py [OPTIONS] <SUBCOMMAND> [ARGS]

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
$ cat ./tests/arithmetic.sko
-- arithmetic.sko

-- add
1 2 + =>

-- substract
3 2 - =>
$ ./skorpio.py -s ./tests/arithmetic.sko
3
1
```

**It is strongly recommended to use [PyPy](https://www.pypy.org/) for the simulation mode since CPython is too slow for that.**

### Compilation
The compilation generates assembly code, compiles it with [nasm](https://www.nasm.us/), and then links it with [GNU ld](https://www.gnu.org/software/outpututils/). Both should be available in your `$PATH`.

```console
$ cat ./tests/arithmetic.sko
-- arithmetic.sko

-- add
1 2 + =>

-- substract
3 2 - =>
$ ./skorpio.py -c ./tests/arithmetic.sko
[INFO] Generating arithmetic.asm
[CMD] nasm -felf64 tests/arithmetic.asm
[CMD] ld -o tests/arithmetic tests/arithmetic.o
$ ./tests/arithmetic
3
1
```

The `-r` subcommand allows you to run the program after successful compilation:

```console
$ ./skorpio.py -c -r ./tests/arithmetic.sko
[INFO] Generating arithmetic.asm
[CMD] nasm -felf64 tests/arithmetic.asm
[CMD] ld -o tests/arithmetic tests/arithmetic.o
[CMD] tests/arithmetic
3
1
```

The `-o` subcommand allows you to customize the output path:

```console
$ mkdir output && ./skorpio.py -c -o output/ ./tests/arithmetic.sko
[INFO] Generating arithmetic.asm
[CMD] nasm -felf64 output/arithmetic.asm
[CMD] ld -o output/arithmetic output/arithmetic.o
$ ls output/
arithmetic*  arithmetic.asm  arithmetic.o
```

Or as a file:

```console
$ ./skorpio.py -c -o ./output ./tests/arithmetic.sko
[INFO] Generating output.asm
[CMD] nasm -felf64 ./output.asm
[CMD] ld -o ./output ./output.o
[CMD] ./output
$ ls
output*  output.asm  output.o  assets/  LICENCE  skorpio.py*  README.md  test.py*  tests/
```

You can chain the `-r` and `-o` subcommands:

```console
$ mkdir output && ./skorpio.py -c -r -o output/ ./tests/arithmetic.sko
[INFO] Generating arithmetic.asm
[CMD] nasm -felf64 output/arithmetic.asm
[CMD] ld -o output/arithmetic output/arithmetic.o
[CMD] output/arithmetic
3
1
```

### Testing

Test cases are located in [./tests/](./tests/) folder. The `*.txt` files contain inputs (command line arguments, stdin) and expected outputs (exit code, stdout, stderr) of the corresponding programs.

Run [./test.py](./test.py) script to execute the programs and assert their outputs:
```console
$ ./test.py run
```

To update expected outputs of the programs run the `update` subcommand:
```console
$ ./test.py update
```

To update expected command line arguments and stdin of a specific program run the `update input <path/to/program.sko>` subcommand:

```console
$ ./test.py update input ./tests/argv.sko <new> <cmd> <args>
[INFO] Provide the stdin for the test case. Press ^D when you are done...
Hello, World
^D
[INFO] Saving input to ./tests/argv.txt
```

The [./examples/](./examples/) folder contains programs that are meant for showcasing the language rather then testing it:
```console
$ ./test.py run ./examples/
$ ./test.py update input ./examples/name.sko
$ ./test.py update output ./examples/
```

For more info see `./test.py help`

### Usage

If you wanna use the Skorpio compiler separately from its codebase you only need two things:
- [./skorpio.py](./skorpio.py) - the compiler itself,
- [./std/](./std/) - the standard library.

By default the compiler searches files to include in `./` and `./std/`. You can add more search paths via the `-I` flag before the subcommand: `./skorpio.py -I <custom-path> -r ...`. See `./skorpio.py help` for more info.



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
use <std.sko>

"Hello, World!\n" stdout fmt
```

The `fmt` function from `std.sko` module expects two values on the data stack:
1. the size of the buffer it needs to print,
2. the pointer to the beginning of the buffer,

The size and the pointer are provided by the string `"Hello, World!"`.

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
- `divmod` - perform [Euclidean division](https://en.wikipedia.org/wiki/Euclidean_division) between two elements on top of the stack.
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
- `not` - bit `not`.
```c
[a: int] -- [~a: int]
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

- `*s` - store a given byte at the address on the stack.
```c
[byte: int] [place: ptr] --
```
- `&l` - load a byte from the address on the stack.
```c
[place: ptr] -- [byte: int]
```
- `*64` - store an 8-byte word at the address on the stack.
```c
[byte: int] [place: ptr] --
```
- `&64` - load an 8-byte word from the address on the stack.
```c
[place: ptr] -- [byte: int]
```

#### System

- `sys<n>` - perform a syscall with n arguments where n is in range `[0..6]`. (`sys0`, `sys1`, ..., `sys6`)

### Functions

Define a new `<keyword>` that expands into a sequence of `<tokens>` during the compilation.

An example with the keyword `log` and as tokens `stdout SYS_write sys3`:
```v
fn log
	stdout SYS_write sys3
end

"Hello, World!\n" log

-- returns "Hello, World!"
```

### Include

Include tokens of file `file.sko`
```v
use <file.sko>
```

## FAQ
Why would you use a [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming), and is there any practical advantages of such a paradigm ?

* CPU Time 

* [Memory leak](https://en.wikipedia.org/wiki/Memory_leak) 

* [Fragmentation](https://en.wikipedia.org/wiki/Fragmentation_of_memory) 

* [Locality](https://www.cs.cornell.edu/courses/cs3110/2009fa/Lectures/lec24.html)

([source](https://stackoverflow.com/questions/5589999/why-use-a-stack-oriented-language/45818678#45818678) for full answers)
