%{
	#include "y.tab.h"
	int number = 0;
%}

VAR_NAME	[_a-zA-Z][_a-zA-Z0-9]*
VALUE	[0-9]+
%%

"INTEGER"	{return INTEGER;}
{VAR_NAME}	{return VAR_NAME;};
{VALUE} {number = atoi(yytext); return VALUE;}
"("		{return PARENTESIS_OPEN;}
")"		{return PARENTESIS_CLOSE;}
":="	{return ASSIGNATION;}

%%