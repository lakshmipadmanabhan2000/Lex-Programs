%{
#include<stdio.h>
#include<stdlib.h>
int valid=0;
%}
letter	[a-z|A-Z]
digit	[0-9]
protocol	["http://"|"https://"]
domainname	[".org"|".in"|"com"]
character	['_'|'*'|'$'|'#']
%%
{protocol}?+"www."+({letter}|{digit}|{character})({letter}|{digit}|{character})*+{domainname} { valid=1; }
%%
int main()
{
	printf("\nEnter URL : ");
	yylex();
	if(valid==1){
		printf("Valid URL");
	}
	if (valid==0){
		printf("Invalid URL");
	}
}
int yywrap(void) {
	return 1;
}