memmov: memmov.o
	gcc -o memmov memmov.o -no-pie
memmov.o: memmov.asm
	nasm -f elf64 -g -F dwarf memmov.asm -l memmov.lst
clean:
	rm memmov *.o *.lst
