# C-Compiler
A C compiler that detects lexical error and produces a parsed output.
## ASSUMPTIONS-
a)allowed programs-
i) only *single* variable declaration is allowed at a time (not initialization) however in function call variable declaration and initialization both are allowed.
ii)function declaration
iii)function defintion 

b)allowed datatypes-
i)positive numbers 

c)FUNCTION DEFINITION- statements allowed are 
i) if
ii) if else (NOTE-NO NESTED IF ELSE ALLOWED)
iii) assignment 
iv) function call with parameters(NOTE-PARAMETERS CAN BE OF INT OR CHAR * DATATYPE ONLY) 
v) return function (return type can be int or char * only)
vi) while statement (NOTE-NO NESTED WHILE ALLOWED)

FOR IF AND WHILE STATEMENTS THE CONDITION SHOULD CONSIST OF COMPARING BETWEEN TWO EXPRESSIONS USING "==" or "!=" AND IF AND ELSE STATEMENT SHOULD HAVE '{' and '}' at the start and end of statements.
 
d)ASSIGNMENT STATEMENTS-
i) where identifier assigned('==') to an expression or datatype and identifier assigned to expression
ii)Precedence is followed as given by mam.
iii)+,-,/,*,() can be evaluated.
iv) nesting is allowed.
