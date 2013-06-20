%{
#include <stdio.h>
#include <stdlib.h>
%}

%token INTEGER
%token VAR_NAME
%token VALUE
%token ASSIGNATION
%token PARENTESIS_OPEN
%token PARENTESIS_CLOSE
%start prime

%%

prime:	INTEGER PARENTESIS_OPEN VAR_NAME 
		PARENTESIS_CLOSE ASSIGNATION VALUE {
									printf("%s", $1);
									}; 	


%%
int
main(int argc, char *argv[]) {
 	yyparse();
 	return 0;
}