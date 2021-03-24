
%{
#include<stdio.h>
%}


/*Rule Section*/
%%


^[a-zA-Z_][a-zA-Z0-9_]*  {printf("\n Identifier \n");}   

.* {printf("\n Not Identifier \n");}

%%


int yywrap()					
{
return 1;
}

int main()
{

yylex();						
return 0;
}