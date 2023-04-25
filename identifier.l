%{
#include<stdio.h>
%}
letter [a-zA-Z]
digit [0-9]
us [_]
id ({letter}|{us})({letter}|{digit}|{us})*
number {digit}+(.{digit}+)?(E[+-]?{digit}+)?
other ({digit}*)({letter}|{digit}|{us})*
%%

if {printf("%s is a keyword\n",yytext);}
else { printf("%s is a keyword\n",yytext);}
{id} {printf("%s is an identifier\n",yytext);}

"<" { printf("%s is less than symbol\n",yytext);}
"<=" { printf("%s is less than or equals to symbol\n",yytext);}
{number} { printf("%s is a number\n",yytext);}
{other} {printf("%s is not an identifier\n",yytext);}

%%
int yywrap(){}
int main()
{
yylex();
return 0;
}
