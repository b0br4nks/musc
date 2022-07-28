<div align="center">
<p>
 <img width="200" src="dist/musc_logo.svg">
</p>
<h1>The Musc Programming Language</h1>
</div>

<center>**The development of this language is in progress!</center>

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
$ cat tests/01_arithmetics.musc
1 1 + =>
2 2 - =>
1 3 + 1 - =>
$ ./musc.py -s tests/01_arithmetics.musc
2
0
3
```

### Compilation
The compilation generates assembly code, compiles it with [nasm](https://www.nasm.us/), and then links it with [GNU ld](https://www.gnu.org/software/binutils/). Both should be available in your `$PATH`.

```console
$ cat tests/01_arithmetics.musc
1 1 + =>
2 2 - =>
1 3 + 1 - =>
$ ./musc.py -c tests/01_arithmetics.musc
[INFO] Generating ./01_arithmetics.asm
[CMD] nasm -felf64 ./01_arithmetics.asm
[CMD] ld -o ./01_arithmetics ./01_arithmetics.o
$ ./01_arithmetics
2
0
3
```

## Language Reference

This is what the language supports so far.

### Stack Manipulation

- `<integer>` - push the integer onto the stack. Right now the integer is anything that is parsable by [int](https://docs.python.org/3/library/functions.html#int) function.
```
a --> a
```
- `cp` - duplicate an element on top of the stack.
```
a --> a a
```

- `=>` - print the element on top of the stack to stdout and remove it from the stack.
```
a b --> a
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

### Arithmetics

- `+` - sums up two elements on the top of the stack.
```
[a: int] [b: int] --> [a + b: int]
```
- `-` - subtracts the top of the stack from the element below.
```
[a: int] [b: int] --> [a - b: int]
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

## FAQ
Why would you use a [stack-oriented language](https://en.wikipedia.org/wiki/Stack-oriented_programming), and is there any practical advantages of such a paradigm ?

* CPU Time 

* [Memory leak](https://en.wikipedia.org/wiki/Memory_leak) 

* [Fragmentation](https://en.wikipedia.org/wiki/Fragmentation_of_memory) 

* [Locality](https://www.cs.cornell.edu/courses/cs3110/2009fa/Lectures/lec24.html)

([source](https://stackoverflow.com/questions/5589999/why-use-a-stack-oriented-language/45818678#45818678) for full answers)
