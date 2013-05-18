INTEGER     "INTEGER"\([_a-zA-Z][_a-zA-Z0-9]*\):=[0-9]+
CHARACTER   "CHARACTER"\([_a-zA-Z][_a-zA-Z0-9]*\):=\'[a-zA-Z]\'
BOOLEAN     "BOOLEAN"\([_a-zA-Z][_a-zA-Z0-9]*\):=("TRUE"|"FALSE")
CONSTANT    "CONSTANT"\([_a-zA-Z][_a-zA-Z0-9]*\):=[0-9]+
FUNCTION    "FUNCTION"\([_a-zA-Z][_a-zA-Z0-9]*\)
ENDFUNCTION "ENDFUNCTION"\([_a-zA-Z][_a-zA-Z0-9]*\)
LESS_THAN "LESS_THAN"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
GREATER_THAN "GREATER_THAN"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
EQUALS "EQUALS"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
NOT_EQUALS "NOT_EQUALS"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
IF "IF"\(({LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS})\)
ENDIF "ENDIF"
WHILE "WHILE"\(({LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS})\)
ENDWHILE "ENDWHILE"	
ADD "ADD"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
LESS "LESS"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
DIVIDE "DIVIDE"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
MULTIPLY "MULTIPLY"\((\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9]),(\{[_a-zA-Z][_a-zA-Z0-9]*\}|[0-9])\)
VAR_LEFT_VALUE	<[_a-zA-Z][_a-zA-Z0-9]*>:=({LESS}|{ADD}|{MULTIPLY}|{DIVIDE}|{LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS})
%%

{INTEGER}";"       		printf("Token INTEGER: %s\n", yytext);
{CHARACTER}";"     		printf("Token CHARACTER: %s\n", yytext);
{BOOLEAN}";"       		printf("Token BOOLEAN: %s\n", yytext);
{CONSTANT}";"      		printf("Token CONSTANT: %s\n", yytext);
{FUNCTION}      		printf("Token FUNCTION: %s\n", yytext);
{ENDFUNCTION}   		printf("Token ENDFUNCTION: %s\n", yytext);
{VAR_LEFT_VALUE}";"     printf("Token VAR_LEFT_VALUE: %s\n", yytext);
{LESS_THAN}";"     		printf("Token LESS_THAN: %s\n", yytext);
{GREATER_THAN}";"   	printf("Token GREATER_THAN: %s\n", yytext);
{EQUALS}";"     		printf("Token EQUALS: %s\n", yytext);
{NOT_EQUALS}";"    	 	printf("Token NOT_EQUALS: %s\n", yytext);
{IF}					printf("Token IF: %s\n", yytext);
{ENDIF}					printf("Token ENDIF: %s\n", yytext);
{WHILE}					printf("Token WHILE: %s\n", yytext);
{ENDWHILE}					printf("Token ENDWHILE: %s\n", yytext);
{ADD}";"     		printf("Token ADD: %s\n", yytext);
{LESS}";"     		printf("Token LESS: %s\n", yytext);
{DIVIDE}";"     		printf("Token DIVIDE: %s\n", yytext);
{MULTIPLY}";"     		printf("Token MULTIPLY: %s\n", yytext);
.						printf("NO ES UN TOKEN\n");

%%


int
main(int argc, char *argv[]) {
   yylex();
}
