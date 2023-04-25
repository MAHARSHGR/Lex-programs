%{
#include<stdio.h>
int lines = 0,words = 0,chars = 0,blanks = 0;
%}
%%
[\t] blanks++;
[\n] lines++;
[^\t\n] {words++;chars+=yyleng;}
"end" {return 0;}
%%
int yywrap(){
printf("Charscters = %d,lines = %d,blanks = %d,words = %d",chars,lines,blanks,words);
}
int main(int argc,char *argv[]){
yyin = fopen(argv[1],"r");
yylex();
return 0;
}
