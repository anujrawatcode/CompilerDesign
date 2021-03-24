%{
    #include<stdio.h>
    int lc=0, ch=0, tc=0, sc=0; /* Gobal Variable */
%}


%%
[ ] {sc++;}  // space
\n  {lc++;}  // line 
\t  {tc++;}  // tab
.   {ch++;}  // character
%%


int yywrap()
{
    return 1;
}
void main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("\n\ntotal space %d \n", sc);
    printf("total line %d \n", lc);
    printf("total tab %d \n", tc);
    printf("total character %d \n", ch);
}