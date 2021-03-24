%{
    #include<stdio.h>
    int min=1000, max=0, len=0;
%}

%%

[a-zA-Z]  {
                len++;
         
          }
[ ] {
             if(len > max)
                max = len;
             if(len < min)
                min = len;
             len=0;
             }


%%

int yywrap() {return 1;}

int main()
{
    yyin = fopen("input.txt", "r");
    yylex();

    printf("\n Max  %d \n", max);
    printf("\n Min  %d \n", min);

    

}