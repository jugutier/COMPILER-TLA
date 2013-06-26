all:
	yacc -d grammar.y
	lex lex.l
	gcc -o parser lex.yy.c y.tab.c -ly
compile:
	./parser < myprogram.py > output.asm
	nasm -f elf -o program.o output.asm
	ld -o program program.o
	
