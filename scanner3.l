%option noyywrap
%{
#include <stdio.h>
%}

%%
">=" { printf("GREATER_EQUAL: %s\n", yytext); }
"("  { printf("LEFT_PAREN: %s\n", yytext); }
")"  { printf("RIGHT_PAREN: %s\n", yytext); }
"{"  { printf("LEFT_BRACE: %s\n", yytext); }
"}"  { printf("RIGHT_BRACE: %s\n", yytext); }
";"  { printf("SEMICOLON: %s\n", yytext); }

[ \t\n]+ { /* Ignore whitespace so it doesn't break */ }
.        { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
