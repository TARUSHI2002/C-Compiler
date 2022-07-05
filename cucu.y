%{

#include <stdio.h>
#include<stdlib.h>
#include <string.h>
#include <stdarg.h>
#define YYSTYPE char*
void yyerror(const char *msg);
int yylex();
int yywrap();

%}

%token INT CHAR FOR WHILE IF ELSE RELATIONALOP ASSIGNOP RELATIONALOPNE NUM ID OBRACE RETURN EBRACE OBRACKET EBRACKET SEMICOLON PLUS MINUS MULTIPLY DIVIDE COMMA

%%

program:  var_dec  
         |func_def 
         |func_dec
         |program var_dec
         |program func_def
         |program func_dec 
;

func_def: func_dect body {fprintf(stdout," function body function definition ");}
;

func_dect: datatype ID OBRACKET arguments EBRACKET {fprintf(stdout," identifier:%s ",$2);}
; 

func_dec: func_dect SEMICOLON {fprintf(stdout," function declaration\n");}
;

body: OBRACE statements EBRACE
;

statements: statements statement SEMICOLON
| statement SEMICOLON
;

statement: assignment {fprintf(stdout," assignment statement ");}
| funcall {fprintf(stdout," function call ");}
| RETURN ID {fprintf(stdout," return statement ");}
| compound 
;

funcall: ID OBRACKET parameters EBRACKET {fprintf(stdout," identifier-%s ",$1);}
;

parameters: ID temp {fprintf(stdout," var-%s ",$1);}
;

temp:
| COMMA ID temp {fprintf(stdout," var-%s ",$2);}
; 

condition: expression RELATIONALOP expression {fprintf(stdout," == ");}
| expression RELATIONALOPNE expression {fprintf(stdout," != ");}
;

assignment: ID ASSIGNOP expression {fprintf(stdout," = ");}
| datatype ID ASSIGNOP expression {fprintf(stdout," = var-%s ",$2);}
;

expression: expression PLUS term {fprintf(stdout," + ");}
| expression MINUS term {fprintf(stdout," - ");}
| term
;

term: term MULTIPLY factor {fprintf(stdout," * ");}
| term DIVIDE factor {fprintf(stdout," / ");}
| factor
;

factor: ID {fprintf(stdout," var-%s ",$1);}
| NUM {fprintf(stdout," val-%s ",$1);}
| OBRACKET expression EBRACKET
;

arguments: datatype ID {fprintf(stdout," arguments-%s ",$2);}
          | arguments COMMA datatype ID {fprintf(stdout," arguments-%s ",$4);}
;

compound: IF OBRACKET condition EBRACKET OBRACE statements EBRACE {fprintf(stdout," if statement ");} 
| IF OBRACKET condition EBRACKET OBRACE statements EBRACE ELSE OBRACE statements EBRACE {fprintf(stdout," if else statement ");}
| WHILE OBRACKET condition EBRACKET OBRACE statements EBRACE {fprintf(stdout," while statement ");}
;

var_dec: datatype ID SEMICOLON {fprintf(stdout," variable declaration-%s\n ",$2);}
;

datatype: INT 
| CHAR 
;

%%

void yyerror(const char* msg){
    printf("%s\n",msg);
}

int main(int argc,char *argv[]){
    extern FILE *yyin, *yyout,*stdout;
    yyin = fopen (argv[1],"r");
    yyout = fopen("Lexer.txt","w");
    stdout = fopen("Parser.txt","w");
    yyparse();
}

