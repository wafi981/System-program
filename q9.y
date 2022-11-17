%{
#include<stdio.h>
int valid=1;
%}

%token NUMBER ID

%left '+' '-' 
%left '*' '/'
%%
expr: expr '+' expr
|expr '-' expr
|expr '*' expr
|expr '/' expr
|'-'NUMBER
|'-'ID
|'('expr')'
|NUMBER
|ID;
%%
main()
{
printf("Enter the expression\n"); 
yyparse();
if(valid)
printf("\nExpression is valid\n");
}
int yyerror(char *s)
{
valid=0;
printf("\nExpression is invalid");
}
