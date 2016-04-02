grammar A2;

@header {
import java.util.TreeMap;
}

@members {
	public static TreeMap<String, Integer> decVars = new TreeMap<String, Integer>();
}

start 
	: ( statement )+ EOF
	;	

statement
	: var_decl
	| var_assign
	| repeat_show
	;

var_decl
	: 'variable' ID ';' 
		{ 
			decVars.put( $ID.getText(), null); 
		}
	;

var_assign
	: 'make' name=ID var ';' 
		{ 
			decVars.put( $name.getText(), $var.number); 
		}
	;

repeat_show
	: 'repeat' iterations=var 'show' x=var ';'
		{ 
			for(int i = 0; i < $iterations.number; i++)
				System.out.print($x.number + " ");
			System.out.println();
		}
	;

var returns [int number]
	: x=ID 
		{ 
			$number = decVars.get($x.getText()); 
		}
	| x=NUM 
		{ 
			$number = Integer.parseInt($x.getText()); 
		}
	;

/* Terminal Symbols */
NUM : ('0' .. '9')+ ;
ID : ('a' .. 'z' | 'A' .. 'Z')+ ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '-')* ;
WS : (' ' | '\t' | '\r' | '\n') {skip();} ;

