%{
  #include<stdio.h>
  int m;
%}

%%
[0-9]+ {
         m = atoi(yytext);
         if(m%2==0)
           printf("Even");
         else
           printf("Odd");    
        }
        
.*      {printf("Wrong");}
%%

int yywrap()
{return 1;}

int main()
{
    yylex();
}