%{
    #include<stdio.h>
    int lc=0, wc=0, tc=0, sc=0;
%}

%%
[ ] {sc++;}
\n  {lc++;}
\t  {tc++;}
.   {wc++;}
%%
int yywrap()
{
    return 1;
}
void main()
{
    yylex();
    printf("total space %d", sc);
}