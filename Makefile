name = hello

$(name) : $(name).o
	ld $(name).o -o $(name)

$(name).o : $(name).asm
	nasm -f elf64 $(name).asm

go :
	./$(name)

clear :
	rm $(name)
	rm $(name).o
