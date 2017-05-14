# Compiles the parser using the buildit script provided.
all:	checker1.c checker1.y checker1.in yyerror.c buildit
	./buildit checker1

# Cleans junk files from the directory.
clean:
	rm -f scan lex.yy.c parse checker1.tab.c jmforbe-sde1.zip checker1.tab.h checker1

