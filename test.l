%{
	#include "y.tab.h"
	int number = 0;
%}
%%

[0-9] {number = atoi(yytext); return DIGIT;}

%%