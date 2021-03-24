%{
#include<stdio.h>
int dig=0, cha=0;
%}

%%

[0-9]      {dig++;}

[a-zA-Z]

.         {cha++;}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\n digit = %d \n", dig);
    printf("S char = %d \n", cha);
}