ANTLR = lib/antlr-4.5.2-complete.jar
JASMIN = lib/jasmin.jar
CP = $(ANTLR):$(JASMIN):.

all:
	java -jar $(ANTLR) -no-listener -no-visitor *.g4
	javac -cp $(CP) *.java

run:
	java -cp $(CP) SimpleCompiler tests/declaration.txt > declaration.j
	java -jar $(JASMIN) declaration.j
	java declaration
	read Declaration Test
	java -cp $(CP) SimpleCompiler tests/print_one.txt > print_one.j
	java -jar $(JASMIN) print_one.j
	java print_one
	read Print One Test
	java -cp $(CP) SimpleCompiler tests/print_multi.txt > print_multi.j
	java -jar $(JASMIN) print_multi.j
	java print_multi
	read Print Many Test
	java -cp $(CP) SimpleCompiler tests/addition.txt > addition.j
	java -jar $(JASMIN) addition.j
	java addition
	read Addition Test
	java -cp $(CP) SimpleCompiler tests/subtraction.txt > subtraction.j
	java -jar $(JASMIN) subtraction.j
	java subtraction
	read Subtraction Test
	java -cp $(CP) SimpleCompiler tests/product.txt > product.j
	java -jar $(JASMIN) product.j
	java product
	read Product Test
	java -cp $(CP) SimpleCompiler tests/division.txt > division.j
	java -jar $(JASMIN) division.j
	java division
	read Division Test
	java -cp $(CP) SimpleCompiler tests/expression.txt > expression.j
	java -jar $(JASMIN) expression.j
	java expression
	read Expression Test
	java -cp $(CP) SimpleCompiler tests/repeat_one.txt > repeat_one.j
	java -jar $(JASMIN) repeat_one.j
	java repeat_one
	read Repeat one statement Test
	java -cp $(CP) SimpleCompiler tests/repeat_multi.txt > repeat_multi.j
	java -jar $(JASMIN) repeat_multi.j
	java repeat_multi
	read Repeat many statements Test
	

clean:
	rm -rf SimpleLexer.java SimpleParser.java *.tokens *.class *.j
