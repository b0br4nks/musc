<div align="center">
<p>
 <img width="200" src="dist/musc_logo.svg">
</p>
<h1>The Musc Programming Language</h1>

[Roadmap](#roadmap) | [Usage](#usage) | [Example](Example) | [Example](Example) | [Example](Example)
</div>

**The development of this language is in progress!**

## Roadmap
* [x] Compiled ([Compiled language](https://en.wikipedia.org/wiki/Compiled_language))
* [x] Native ([Native](https://en.wikipedia.org/wiki/Native_%28computing%29))
* [ ] Turing-complete ([Turing completeness](https://en.wikipedia.org/wiki/Turing_completeness))
* [ ] Statically typed ([Static type checking](https://en.wikipedia.org/wiki/Type_system#Static_type_checking))
* [ ] Self-hosted (Written in itself, no more Python. [Self-hosting](https://en.wikipedia.org/wiki/Self-hosting_(compilers)))

## Usage
```console
$ ./musc.py help

Usage: ./musc.py <SUBCOMMAND> [ARGS]
SUBCOMMANDS:
    simulate, --s <file>      Simulate the program
    compile,  --c <file>      Compile the program
    help,     --h             Print help to STDOUT and exit 0
    
$ ./musc.py --c <path/to/file.mxc>
$ ./output
```
Or simply:
```console
$ make
```
