# C-Compiler
A C compiler that detects lexical error and produces a parsed output.
## ASSUMPTIONS-
1. allowed programs-<br />
i) only *single* variable declaration is allowed at a time (not initialization) however in function call variable declaration and initialization both are allowed.<br />
ii)function declaration<br />
iii)function defintion<br />

2. allowed datatypes-<br />
   positive numbers<br /> 

3. FUNCTION DEFINITION- statements allowed are <br />
   if<br />
   if else (NOTE-NO NESTED IF ELSE ALLOWED)<br />
   assignment <br />
   function call with parameters(NOTE-PARAMETERS CAN BE OF INT OR CHAR * DATATYPE ONLY) <br />
   return function (return type can be int or char * only)<br />
   while statement (NOTE-NO NESTED WHILE ALLOWED)<br />

FOR IF AND WHILE STATEMENTS THE CONDITION SHOULD CONSIST OF COMPARING BETWEEN TWO EXPRESSIONS USING "==" or "!=" AND IF AND ELSE STATEMENT SHOULD HAVE '{' and '}' at the start and end of statements. <br />
 
4. ASSIGNMENT STATEMENTS-<br />
   where identifier assigned('==') to an expression or datatype and identifier assigned to expression<br />
   Precedence is followed as given by mam.<br />
   +,-,/,*,() can be evaluated.<br />
   nesting is allowed.<br />
