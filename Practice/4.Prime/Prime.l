%{
    #include<stdio.h>
    int m;
%}

%%

[0-9]+ {
          int flag=0;
          int m = atoi(yytext);
          if(m==0 || m==1)
            flag=1;
          if(m==2)
            flag=0;
          else
          {
              for(int i=2; i<m; i++)
                 if(m%i==0)
                 {
                     flag=1;
                 }
          }

          if(flag == 0)
            printf("Yes");
          else
            printf("Not");
       }

.* { printf("wrong input"); }

%%

int yywrap()
{return 1;}

int main()
{
    yylex();
}