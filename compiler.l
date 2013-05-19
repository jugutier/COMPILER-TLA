VAR_NAME	[_a-zA-Z][_a-zA-Z0-9]*
DIGIT		[0-9]
VAR_RIGHT_VALUE		\{{VAR_NAME}\}
VAR_LEFT_VALUE		<{VAR_NAME}>
INTEGER     "INTEGER"\({VAR_NAME}\):={DIGIT}+
CHARACTER   "CHARACTER"\({VAR_NAME}\):=\'[a-zA-Z]\'
BOOLEAN_TYPE	"TRUE"|"FALSE"
BOOLEAN     "BOOLEAN"\({VAR_NAME}\):=({BOOLEAN_TYPE})
CONSTANT    "CONSTANT"\({VAR_NAME}\):={DIGIT}+
FUNCTION    "FUNCTION"\({VAR_NAME}\)
ENDFUNCTION "ENDFUNCTION"\({VAR_NAME}\)
LESS_THAN "LESS_THAN"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
GREATER_THAN "GREATER_THAN"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
EQUALS "EQUALS"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
NOT_EQUALS "NOT_EQUALS"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
IF "IF"\(({LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS}|{VAR_RIGHT_VALUE}|{BOOLEAN_TYPE})\)
ENDIF "ENDIF"
WHILE "WHILE"\(({LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS}|{VAR_RIGHT_VALUE}|{BOOLEAN_TYPE})\)
ENDWHILE "ENDWHILE"	
ADD "ADD"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
LESS "LESS"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
DIVIDE "DIVIDE"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
MULTIPLY "MULTIPLY"\(({VAR_RIGHT_VALUE}|{DIGIT}),({VAR_RIGHT_VALUE}|{DIGIT})\)
VAR_DEFINITION	{VAR_LEFT_VALUE}:=({LESS}|{ADD}|{MULTIPLY}|{DIVIDE}|{LESS_THAN}|{GREATER_THAN}|{EQUALS}|{NOT_EQUALS})
%%

{INTEGER}";"       		printf("Token INTEGER: %s\n", yytext);
{CHARACTER}";"     		printf("Token CHARACTER: %s\n", yytext);
{BOOLEAN}";"       		printf("Token BOOLEAN: %s\n", yytext);
{CONSTANT}";"      		printf("Token CONSTANT: %s\n", yytext);
{FUNCTION}      		printf("Token FUNCTION: %s\n", yytext);
{ENDFUNCTION}   		printf("Token ENDFUNCTION: %s\n", yytext);
{VAR_DEFINITION}";"     printf("Token VAR_DEFINITION: %s\n", yytext);
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
