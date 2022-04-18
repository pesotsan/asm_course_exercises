external: external.o
	gcc -o external external.o -no-pie
external.o: external.asm
	nasm -f elf64 -g -F dwarf external.asm -l external.lst
clean:
	rm external external.o external.lst
