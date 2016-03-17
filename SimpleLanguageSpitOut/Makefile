all:
	antlr4 -no-listener -no-visitor *.g4
	javac *.java

run:
	@java -cp C:\libs\antlr-4.5.2-complete.jar;. ParseFile inputfile 
	

clean:
	del A2*.java *.tokens *.class A2.java
