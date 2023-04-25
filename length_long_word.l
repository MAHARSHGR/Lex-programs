%{
#include<string.h>
int counter =0;
char str[100];
%}
%%
[a-zA-Z]+ {if(yyleng > counter)
{
counter = yyleng;
strcpy(str,yytext);
}
}
"\n" {return 0;}
%%
int main(){
yylex();
printf("length longest word : %d\n",counter);
printf("longest word is :%s\n",str);
}
