%{
   #include<stdio.h>
   #include<stdlib.h>
   int valid=0;
%}
ddate	([0][1-9])|([1][0-9])|([3][0-1]|[0-9])
year	([0-9][0-9]|[0-9][0-9][0-9][0-9])
month	(([0][1-9])|([1][0-2])|([1-9]))
symbol	['/'|'\-']
%%
{ddate}?+{symbol}+{month}+{symbol}+{year}  {valid=1;}  
%%
int main()
{
  printf("\nEnter date : ");
  yylex();
  if(valid==1)
	 printf("Valid Date");
  else 
	printf("Invalid Date");
}
 int yywrap()
{
 return 1;
}
