This repository is a bunch of x86_64 ASM code I used to teach modern Assembly myself.

Some code snippets are from books:
- Beginning x64 Assembly Programming by Jo Van Hoey
- x86-64 Assembly Language Programming with Ubuntu by E.D Jorgensen 

Some other code snippets are not extracted from these books, but may based on them.

The code corresponds to an Assembly of Linux kernel. The toolchain used consists of NASM, GCC, Makefile. The debugging was done with GDB, with DDD as front-end.

In order to run any code in this repository nasm, build-essential and gcc need to be installed. Then:
- run 'chmod +x ./build' in the corresponding directory
- run ./build
- run the executable
