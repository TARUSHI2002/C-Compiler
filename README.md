# C-Compiler
A C compiler that detects lexical error and produces a parsed output.
## ASSUMPTIONS-
1. allowed programs-
i) only *single* variable declaration is allowed at a time (not initialization) however in function call variable declaration and initialization both are allowed.
ii)function declaration
iii)function defintion 

2. allowed datatypes-
   -positive numbers 

3. FUNCTION DEFINITION- statements allowed are 
   *if
   -if else (NOTE-NO NESTED IF ELSE ALLOWED)
   -assignment 
   -function call with parameters(NOTE-PARAMETERS CAN BE OF INT OR CHAR * DATATYPE ONLY) 
   -return function (return type can be int or char * only)
   -while statement (NOTE-NO NESTED WHILE ALLOWED)

FOR IF AND WHILE STATEMENTS THE CONDITION SHOULD CONSIST OF COMPARING BETWEEN TWO EXPRESSIONS USING "==" or "!=" AND IF AND ELSE STATEMENT SHOULD HAVE '{' and '}' at the start and end of statements.
 
4. ASSIGNMENT STATEMENTS-
   -where identifier assigned('==') to an expression or datatype and identifier assigned to expression
   -Precedence is followed as given by mam.
   -+,-,/,*,() can be evaluated.
   -nesting is allowed.
