%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
letter	[a-z|A-Z]
digit	[0-9]
character	['_'|'*'|'$'|'#']
%%
["//"|"#"]+({letter}|{digit}|{character})* { flag=1; }
"/*"+({letter}|{digit}|{character})*+"*/" { flag=1; }
%%
int main()
{
printf("\nEnter Comment Line : ");
yylex();
if(flag==1)
printf("Valid Comment Line");
if (flag==0)
printf("Invalid Comment Line");
}

int yywrap(void) {
	return 1;
}