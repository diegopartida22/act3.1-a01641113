all:
	lex lex_analyzer.l
	gcc -o lex_analyzer lex.yy.c -ll

clean:
	rm -f lex.yy.c lex_analyzer