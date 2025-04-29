%{
#include <stdio.h>
%}

%%
"//".*                       { printf("COMMENT"); }
"f"                           { printf("floatdcl "); }
"i"                           { printf("intdcl "); }
"p"                           { printf("print "); }
[a-z]                         { printf("id "); }
"="                           { printf("assign "); }
[0-9]+\.[0-9]+                { printf("fnum "); }
[0-9]+                        { printf("inum "); }
"+"                           { printf("plus "); }
\n                            { printf("\n"); }
[ \t]+                        { /* ignore other whitespace */ }
.                             { /* ignore unknown characters */ }
%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror(argv[1]);
            return 1;
        }
        yyin = file;
    }
    yylex();
    return 0;
}

int yywrap(void) {
    return 1;
}
