jump: jump.o oldschoolloop loopinst
	gcc -o jump jump.o -no-pie
jump.o: jump.asm
	nasm -f elf64 -g -F dwarf jump.asm -l jump.lst
oldschoolloop: oldschoolloop.o
	gcc -o oldschoolloop oldschoolloop.o -no-pie
oldschoolloop.o: oldschoolloop.asm
	nasm -f elf64 -g -F dwarf oldschoolloop.asm -l oldschoolloop.lst
loopinst: loopinst.o
	gcc -o loopinst loopinst.o -no-pie
loopinst.o: loopinst.asm
	nasm -f elf64 -g -F dwarf loopinst.asm -l loopinst.lst
clean:
	rm jump oldschoolloop loopinst *.o *.lst
