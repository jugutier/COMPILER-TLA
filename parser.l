VARIABLES   ^[a-zA-Z][a-zA-Z0-9]*$
DIGIT      [0-9]
PARENTESIS  \(|\)
SYMBOL_ACCEPTED \"|\'
SYMBOLS_NOT_ACCEPTED     \?|\\|\+|-|\*|\/|¿|¡|,|\&|\$|\^|\[|\]|\{|\}|\%|\||!
%%

INTEGER       {printf("Token: INTEGER\n");}
CHARACTER     {printf("Token: CHARACTER\n");}
BOOLEAN       {printf("Token: BOOLEAN\n");}
{DIGIT}         {printf("Token: DIGITO\n");}
TRUE          {printf("Token: TRUE\n");}
FALSE         {printf("Token: FALSE\n");}
IF            {printf("Token: IF\n");}
WHILE         {printf("Token: WHILE\n");}
BEGIN     {printf("Token: BEGIN\n");}   
END             {printf("Token: END\n");}
FOR             {printf("Token: FOR\n");}
CONSTANT      {printf("Token: CONSTANT\n");}
FUNCTION        {printf("Token: FUNCTION\n");}
ENDFUNCTION     {printf("Token: ENDFUNCTION\n");}
EQUALS          {printf("Token: EQUALS\n");}
LESS_THAN           {printf("Token: LESS_THAN\n");}
GREATER_THAN        {printf("Token: GRATED_THAN\n");}
NOT_EQUALS          {printf("Token: NOT_EQUALS\n");}
;                   {printf("Token: ;\n");}
:                   {printf("Token: :\n");}
=                   {printf("Token: =\n");}
BEGINMAIN           {printf("Token: BEGINMAIN\n");}
ENDMAIN             {printf("Token: ENDMAIN\n");}
{VARIABLES}         {printf("Token: VARIABLES = %s\n", yytext);}
{SYMBOL_ACCEPTED}   {printf("Token: SYMBOL\n");}
{PARENTESIS}        {printf("Token: PARENTESIS\n");}
.           {printf("SYMBOL ERROR_FATAL\n");}

%%


int
main(int argc, char *argv[]) {
   yylex();
}
