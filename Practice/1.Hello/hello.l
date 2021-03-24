%{
    #include<stdio.h>
%}

%%
"hi" {printf("bye");}
.*   {printf("Wrong");}


%%

int yywrap()
{ return 1; }

int main()
{
    printf("Enter Something : ");
    yylex();
}


