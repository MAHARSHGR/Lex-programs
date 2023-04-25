%{
int vow_count = 0;
int con_count = 0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {con_count++;}
"\n" {printf("Number of vowels : %d \n",vow_count);
printf("Number of consonants : %d\n",con_count);vow_count=0;con_count=0;}

%%

int yywrap(){}

int main(){
printf("Enter the string of vowels and consonants\n");
yylex();

}
