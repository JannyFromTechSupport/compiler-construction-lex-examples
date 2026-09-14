%option noyywrap
%{
#include <stdio.h>
%}
%%
[0-9]+ { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("IDENTIFIER: %s\n", yytext); }
[ \t]+ { /* ignore whitespace */ }
\n { return 0; } /* Specific rules must go first */ 
. { printf("UNKNOWN: %s\n", yytext); } /* Catch-all at the very bottom */
%%
int main()
{
yylex();
return 0;
}
