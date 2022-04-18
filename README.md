This repository is a bunch of x86_64 ASM code I used to teach modern Assembly myself.

The code corresponds to an Assembly of Linux kernel. The toolchain used consists of NASM, GCC, Makefile. The debugging was done with GDB, with DDD as front-end.

In order to run any code in this repository nasm, build-essential and gcc need to be installed. Then:
- run 'chmod +x ./build' in the corresponding directory
- run ./build
- run the executable
