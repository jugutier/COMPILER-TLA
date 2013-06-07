%{
#include <stdio.h>
#include <stdlib.h>
extern int number;

void yyerror (const char *str) {
    printf ("ERROR: %s, %d\n", str, number);
}

%}

%token DIGIT
%start program

%%

program: 	DIGIT	{printf("PASO \n");};


%%
int
main(int argc, char *argv[]) {
 	yyparse();
 	return 0;
}