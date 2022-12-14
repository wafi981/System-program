%{
#include "y.tab.h"
extern yylval;
%}

token INTEGER
%%
[0-9]+ {
	yylval=atoi(yytext); 
	return NUMBER;
	} 

[a-zA-Z]+ {return ID;}
\n {return 0;}
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}
