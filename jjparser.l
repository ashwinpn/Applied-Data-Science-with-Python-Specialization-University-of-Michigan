%{
#include <iostream>
#include <stdlib.h>
#include "jjparser.tab.h"
%}


%option noyywrap

%%

[0-9]+           {yylval.val = atoi(yytext); return NUM;}
"("              {return LPAREN; }    
")"              {return RPAREN; } 
"var"            {return VAR;    }  
"function"       {return FUNC;   }
"return"         {return RET;    }
"null"           {return NUL;    }
"script"         {return SCR;    }
"if"             {return IF;     }
"while"          {return WH;     }    
"="              {return ASN;    }    
"=="             {return EQV; /* Same Value */}   
"==="            {return EQT; /* Same Value Same Type */} 
"||"             {return LOR;    }   
"&&"             {return LAN;    }   
"!="             {return UNE;    }
"++"             {return INC;    }
[ \t\r\n]+       { /* Ignore white chars */}
"?"              {return TER;    }  

%%
