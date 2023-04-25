%{
int op=0,i;
float a,b;
void digi();
%}
dig [0-9]+([.[0-9]+])?
add "+"
sub "-"
mul "*"
div "/"
pow "^"
ln "\n"
%%
{dig}  {digi();}
{add}  {op=1;}
{sub}  {op=2;}
{mul}  {op=3;}
{div}  {op=4;}
{pow}  {op=5;}
{ln}   {printf("\n The Result : %f\n",a);}
%%
int yywrap(){}
void digi(){
	if(op==0)
		a=atof(yytext);
	else
		b=atof(yytext);
	switch(op){
	case 1:a=a+b;
		break;
	case 2:a=a-b;
		break;
	case 3:a=a*b;
		break;
	case 4:a=a/b;	
		break;
	case 5:for(i=a;b>i;b--)
		a=a*i;
		break;
	}
	op=0;
}
int main(){
yylex();
return 0;
}
