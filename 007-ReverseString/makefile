reversestring: reversestring.o
	gcc -o reversestring reversestring.o -no-pie
reversestring.o: reversestring.asm
	nasm -f elf64 -g -F dwarf reversestring.asm -l reversestring.lst
clean:
	rm reversestring *.o *.lst
