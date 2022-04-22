memmov2: memmov2.o
	gcc -o memmov2 memmov2.o -no-pie
memmov2.o: memmov2.asm
	nasm -f elf64 -g -F dwarf memmov2.asm -l memmov2.lst
clean:
	rm memmov2 *.o *.lst
