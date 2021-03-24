%{
#include<stdio.h>
int v=0,c=0;
%}

%%

[aeiouAEIOU]  {v++;}

[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] {c++;} 

.

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