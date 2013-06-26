%{
#include "y.tab.h"
#include <stdlib.h>
#include <stdio.h>
%}


%option yylineno

%%

[[:blank:]\n]	;
"("	return(LEFT_PARENTHESIS);
")"	return(RIGHT_PARENTHESIS);
"{"	return(LEFT_BRACE);
"}"	return(RIGHT_BRACE);
";"	return(SEMI_COLON);
"return"	return(RETURN);
"decompose"	return(DECOMPOSE);
int {yylval.strval=strdup(yytext); return(TYPE);}
[[:digit:]]+	{ yylval.strval=strdup(yytext); return(CONST);}
[_[:alpha:]][_[:alnum:]]*	{yylval.strval=strdup(yytext);return(ID);}


%%

