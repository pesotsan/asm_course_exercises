strl: strl.o
	gcc -o strl strl.o -no-pie
strl.o: strl.asm
	nasm -f elf64 -g -F dwarf strl.asm -l strl.lst
clean:
	rm strl strl.o strl.lst
