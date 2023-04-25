%{

%}
%%
[\t]+ ;
is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did |
will |
would |
should |
can |
could |
has |
have |
had |
go {printf("%s is a verb",yytext);}
[a-zA-Z]+ {printf("%s is not a verb",yytext);}
"\n" {printf("suii");}
%%
int main(){
yylex();
return 0;
}
