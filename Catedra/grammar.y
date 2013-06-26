%{
#include <stdio.h>
#include <string.h>
%}

%token SEMICOLON;
%token NUMBER;
%token DOT;
%token OUTPUT;


%start program
%%

program : statements
		{
			// This is the typical output sequence to return to the operating system.
			// The return value is stored into ebx (2 in this case)
			printf("mov   eax, 1\nmov   ebx, 2\nint   80h\n");
		}
		;

statements : statement DOT
           | statement SEMICOLON statements;
		   
statement	: NUMBER
			{
				// $1 is just the value assigned to NUMBER
				printf("mov 	eax, %d \n", $1);
			}
			| OUTPUT
			{
				printf("write prompt_str, STR_SIZE \n");
			}
			;

%%

int yywrap()
{
        return 1;
} 
  
main()
{

	// Start program sequence in assembler.
	
	printf("section .data \n");

    printf("prompt_str  db   'Greetings Commander Skywalker...' \n");

    printf("STR_SIZE  equ  $ - prompt_str \n");

	printf("section .bss \n");

	printf("buff  resb  32 \n");

	printf("; A macro with two parameters \n");
	printf("; Implements the write system call \n");
	printf("%%macro write 2 \n");
	printf("mov   eax, 4 \n");
    printf("  mov   ebx, 1 \n");
    printf("  mov   ecx, %%1 \n");
    printf("  mov   edx, %%2 \n");
    printf("  int   80h \n");
	printf("%%endmacro \n");
	
	
	// NASM Style output
	printf("; Text segment begins\n");
	printf("section .text\n");

    printf("global _start\n");

	printf("; Program entry point\n");
	printf("_start:\n");
	
	// the Assembler program will start based on the rules execution from the LALR parser.

   
    yyparse();
} 

