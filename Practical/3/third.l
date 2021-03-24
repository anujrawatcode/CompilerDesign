
/*lex code to accept a valid integer  
  and float value using lex program.*/
    
%{ 
int valid_int=0, valid_float=0; 
%} 
  
%% 

^[-+][0-9]+             { valid_int++;   } 
^[0-9]+                 { valid_int++;   } 

^[-+][0-9]+[.][0-9]+    { valid_float++; }
^[0-9]+[.][0-9]+        { valid_float++; }

.*; 

%% 
  
int yywrap()		
{return 1;}


int main() 
{ 
  yylex(); 
  if(valid_int!=0) printf("\n Valid Integer number\n"); 
  else if(valid_float!=0) printf("\n Valid Float number\n"); 
  else printf("\n Not valid Integer/Float number\n"); 
  return 0; 
} 