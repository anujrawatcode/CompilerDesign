%{
    #include<stdio.h>
    int c = 0;
%}

%%

[0-9] {
        int n = atoi(yytext);
        printf(" %d ", n);
        c++;
      }

.

%%

int yywrap() {return 1;}

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\n  %d  \n", c);
}