floatarit: floatarit.o
	gcc -o floatarit floatarit.o -no-pie
floatarit.o: floatarit.asm
	nasm -f elf64 -g -F dwarf floatarit.asm -l floatarit.lst
clean:
	rm floatarit *.o *.lst
