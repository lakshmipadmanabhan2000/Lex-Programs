%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
letter	[a-z|A-Z]
digit	[0-9]
servername	["gmail"|"yahoo"|"sctce.ac"]
domainname	[".org"|".in"|"com"]
character	['_'|'*'|'$'|'#']
%%
({letter}|{digit}|{character})({letter}|{digit}|{character})*+"\@"+{servername}+{domainname} { flag=1; }
%%
int main()
{
printf("\nEnter Email Id : ");
yylex();
if(flag==1)
printf("Accepted");
if (flag==0)
printf("Not Accepted");
}

int yywrap(void) {
	return 1;
}