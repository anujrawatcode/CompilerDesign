%{
    #include<stdio.h>
%}

%%
">"|"<"|">="|"<="|"!="|"==" {printf(" Yes");}

.* {printf("Not");}

%%

int yywrap()
{return 1;}

int main()
{
    yylex();
}