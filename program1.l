%{
#include<stdio.h>
int i = 0;
%}
%%
([a-zA-Z])+ {i++;}
"\n" {printf("%d\n",i);i=0;printf("Enter a sentence:");}
%%
int yywrap(){}
int main()
{
printf("Enter a sentence:");
yylex();
return 0;
}
