%{#include<stdio.h>
//int ch=0;
%}
%%
[a-z] 	{
	char c=yytext[0];	
	if(c<'z')
	{c+=3;
	printf("%c",c);
	}
	else
	{c='a'+(c-'z')+2;
	printf("%c",c);}
	}
[A-Z] 	{
	char c=yytext[0];	
	if(c<'Z')
	{c+=3;
	printf("%c",c);
	}
	else
	{c='A'+(c-'Z')+2;
	printf("%c",c);}
	}
%%
int main()
{
yyin=fopen("Input.txt","r");

yylex();

}
