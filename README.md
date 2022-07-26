<div align="center">
<p>
 <img width="200" src="dist/musc_logo.svg">
</p>
<h1>The Musc Programming Language</h1>
</div>

<center>**The development of this language is in progress!</center>

## Roadmap
* [x] Compiled ([Compiled language](https://en.wikipedia.org/wiki/Compiled_language))
* [x] Native ([Native](https://en.wikipedia.org/wiki/Native_%28computing%29))
* [ ] Turing-complete ([Turing completeness](https://en.wikipedia.org/wiki/Turing_completeness))
* [ ] Statically typed ([Static type checking](https://en.wikipedia.org/wiki/Type_system#Static_type_checking))
* [ ] Self-hosted (Written in itself, no more Python. [Self-hosting](https://en.wikipedia.org/wiki/Self-hosting_(compilers)))

## Example
Two simple programs:
- the first one prints numbers from 10 to 0 in descending order (multi-line example);
- the second one prints numbers from 0 to 10 in ascending order (one line example);

```musc
first:

10 while :: -1 > do
	:: =>
	1 -
end

second:

0 while :: 11 < do :: => 1 + end
```

## Usage
### Quick Start
```console
$ ./musc.py -h

Usage: ./musc.py <SUBCOMMAND> [ARGS]
SUBCOMMANDS:
    simulate, -s <file>      Simulate the program
    compile,  -c <file>      Compile the program
    help,     -h             Print help to STDOUT and exit 0
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
[INFO] Generating 01_arithmetics.asm
[CMD] nasm -felf64 01_arithmetics.asm
[CMD] ld -o 01_arithmetics 01_arithmetics.o
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
push(<integer>)
```
- `::` - duplicate an element on top of the stack.
```
a = pop()
push(a)
push(a)
```
- `=>` - print the element on top of the stack to stdout and remove it from the stack.
```
a = pop()
print(a)
```

### Comparison

- `=` - checks if two elements on top of the stack are equal. Removes the elements from the stack and pushes `1` if they are equal and `0` if they are not.
```
a = pop()
b = pop()
push(int(a == b))
```
- `>` - applies the greater comparison on top two elements.
```
b = pop()
a = pop()
push(int(a > b))
```
- `<` - applies the less comparison on top two elements.
```
b = pop()
a = pop()
push(int(a > b))
```

### Arithmetics

- `+` - sums up two elements on the top of the stack.
```
a = pop()
b = pop()
push(a + b)
```
- `-` - subtracts the top of the stack from the element below.
```
a = pop()
b = pop()
push(b - a)
```

### Control Flow

- `if <if-branch> else <else-branch> end` - pops the element on top of the stack and if the element is not `0` executes the `<if-branch>`, otherwise `<else-branch>`.
- `while <condition> do <body> end` - keeps executing both `<condition>` and `<body>` until `<condition>` produces `0` at the top of the stack. Checking the result of the `<codition>` removes it from the stack.
