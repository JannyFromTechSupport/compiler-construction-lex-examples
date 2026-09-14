%option noyywrap
%{
#include <stdio.h>
%}
%%
"int" { printf("KEYWORD: INT\n"); }
"if" { printf("KEYWORD: IF\n"); }
"else" { printf("KEYWORD: ELSE\n"); }
"return" { printf("KEYWORD: RETURN\n"); }
[0-9]+ { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("IDENTIFIER: %s\n", yytext); }
"=" { printf("ASSIGN: %s\n", yytext); }
"+" { printf("PLUS: %s\n", yytext); }
"-" { printf("MINUS: %s\n", yytext); }
"*" { printf("MULTIPLY: %s\n", yytext); }
"/" { printf("DIVIDE: %s\n", yytext); }
[ \t\n]+ { }
. { printf("UNKNOWN: %s\n", yytext); }
%%
int main()
{
yylex();
return 0;
}
