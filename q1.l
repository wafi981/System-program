
%{#include<stdio.h>
int lc=0,ch=0;
%}
%%
\n lc++;
. ch++;
%%
int main()
{
yyin=fopen("Input.txt","r");
yylex();
printf("\nNo. of lines=%d",lc); 
printf("\nNo. of other characters=%d\n",ch);
}
