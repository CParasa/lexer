%{

    #include <iostream>      
    using namespace std;      

%}

letter		[a-zA-Z]
digit		[0-9]
other		[_$]
id			{letter}({letter}|{digit}|{other})*
num			({digit}*)("."?)({digit}*)

%%

[ \t\n]+	;	

PROGRAM		cout << "501 " << yytext << endl;

BEGIN		cout << "502 " << yytext << endl;

END			cout << "503 " << yytext << endl;

IF			cout << "504 " << yytext << endl;

THEN		cout << "505 " << yytext << endl;

ELSE		cout << "506 " << yytext << endl;

WHILE		cout << "507 " << yytext << endl;

INTEGER		cout << "508 " << yytext << endl;

REAL		cout << "509 " << yytext << endl;

FOR			cout << "510 " << yytext << endl;

{num}		cout << "200 " << yytext << endl;	
      
{id}		cout << "100 " << yytext << endl;	

!=			cout << "306 " << yytext << endl;

\<=			cout << "307 " << yytext << endl;

\>=			cout << "308 " << yytext << endl;

&&			cout << "309 " << yytext << endl;

\|\|		cout << "310 " << yytext << endl;

:=			cout << "403 " << yytext << endl;

\+			cout << "301 " << yytext << endl;

-			cout << "302 " << yytext << endl;

\<			cout << "303 " << yytext << endl;

\>			cout << "304 " << yytext << endl;

=			cout << "305 " << yytext << endl;

\;			cout << "401 " << yytext << endl;

\,			cout << "402 " << yytext << endl;

:			cout << "404 " << yytext << endl;

\?			cout << "405 " << yytext << endl;

\^			cout << "406 " << yytext << endl;

.			cout << "600 " << yytext << endl;
  
%%
   
int main() {
	yylex();	
	return 0;
}

int yywrap() {
	return 1;
}

  // Ran with Linux commands:
   // before running below commands - install flex - sudo apt-get update && sudo apt-get install -y flex g++
   // Install C/C++ extension in VS code extensions
   //  > flex lexer.l
   //  > gg++ lex.yy.c -o lexer
   //  > ./lexer < input.txt
