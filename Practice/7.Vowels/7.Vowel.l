%{
#include<stdio.h>
int v=0,c=0;
%}

%%

[a,e,i,o,u,A,E,I,O,U]  {v++;}

[0-9]

. {c++;} 

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\n vowels = %d \n", v);
    printf("con = %d \n",  c);
}