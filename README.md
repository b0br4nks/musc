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
./musc.py -h

Usage: ./musc.py <SUBCOMMAND> [ARGS]
SUBCOMMANDS:
    simulate, -s <file>      Simulate the program
    compile,  -c <file>      Compile the program
    help,     -h             Print help to STDOUT and exit 0
```
### Simulation
The simulation is an interpretation of the program
```console
./musc.py -s program.musc
```

### Compilation
The compilation generates assembly code and compiles it with [nasm](https://www.nasm.us/).
```console
$ ./musc.py -c program.musc
$ ./program
```
