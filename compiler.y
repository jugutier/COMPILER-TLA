%{
#include <stdio.h>
#include <stdlib.h>
int n;

void yyerror (const char *str) {
    printf ("ERROR: %s, %d\n", str, number);
}

%}

%token DIGIT
%start program

%%

program: 	IF(condition) source ENDIF		{
												if($1) {
													$2		
												}
											};






%%
int
main(int argc, char *argv[]) {
 	yyparse();
 	return 0;
}