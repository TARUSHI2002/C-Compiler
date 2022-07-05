%{
#include<stdio.h>
#include<string.h>
#define YYSTYPE char*
#include "cucu.tab.h"

void __yywrap(){}
%}

%%


"int"    {fprintf(yyout,"TYPE: int\n");return INT;}
"char *" {fprintf(yyout,"TYPE: char\n");return CHAR;}
"for"    {fprintf(yyout,"KEYWORD: for\n");return FOR;}
"while"  {fprintf(yyout,"KEYWORD: while\n");return WHILE;}
"if"     {fprintf(yyout,"KEYWORD: if\n");return IF;}
"else"   {fprintf(yyout,"KEYWORD: else\n");return ELSE;}
"return" {fprintf(yyout,"KEYWORD: return\n");return RETURN;}
"=="     {fprintf(yyout,"RELATION: ==\n");return RELATIONALOP;}
"="      {fprintf(yyout,"ASSIGN: =\n");return ASSIGNOP;}
"!="     {fprintf(yyout,"RELATION: !=\n");return RELATIONALOPNE;}
[0-9]+   {yylval=strdup(yytext);fprintf(yyout,"NUM: %s\n",yytext);return NUM;}
[a-zA-Z][a-zA-Z0-9_]* {yylval=strdup(yytext);fprintf(yyout,"ID: %s\n",yytext);return ID;}
"{"       {fprintf(yyout,"OBRACE: {\n");return OBRACE;}
"}"       {fprintf(yyout,"EBRACE: }\n");return EBRACE;}
"("       {fprintf(yyout,"OBRACKET: (\n");return OBRACKET;}
")"       {fprintf(yyout,"EBRACKET: )\n");return EBRACKET;}
";"        {fprintf(yyout,"SEMICOLON: ;\n");return SEMICOLON;}
"+"       {fprintf(yyout,"PLUS: +\n");return PLUS;}
"-"       {fprintf(yyout,"MINUS: -\n");return MINUS;}
"*"       {fprintf(yyout,"MULTIPLY: *\n");return MULTIPLY;}
"/"       {fprintf(yyout,"DIVIDE: /\n");return DIVIDE;}
[ \t\n]+  {;}
","       {fprintf(yyout,"COMMA: ,\n");return COMMA;}
%%
