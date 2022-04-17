Exercises from the online course "x86 Assembly Programming From Ground Up".

The course was set to be followed on Windows and using Visual Studio + MASM. Nevertheless I followed it with a setup consisting on Ubuntu 20.04, using VIM as code editor, NASM as assembler and GDB as command line debugger.

So long, differences from the course setup and mine are as follow:
- processor number of bit directive changes to [XX BITS]
- code and data segments directives change to "section .text" and "section .data"
- in order to exit the program in Linux, interrupt 80 is called, with EAX register set to 1
- square brackets are needed to reference the content of variables. Variable names without square brackets reference the variable memory address
