package Analizador;
import java_cup.runtime.Symbol;
%%
%class LexicoCup
%type java_cup.runtime.Symbol
%cup 
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%
/* Tipo de dato Int */
( int ) {return new Symbol(sym.Int, yychar, yyline, yytext());}

/* Tipo de dato Char */
( char ) {return new Symbol(sym.Char, yychar, yyline, yytext());}

/* Tipo de dato Byte */
( byte ) {return new Symbol(sym.Byte, yychar, yyline, yytext());}

/* Tipo de dato Double */
( double ) {return new Symbol(sym.Double, yychar, yyline, yytext());}

/* Tipo de dato Float */
( float ) {return new Symbol(sym.Float, yychar, yyline, yytext());}

/* Tipo de dato String */
( String ) {return new Symbol(sym.Cadena, yychar, yyline, yytext());}

/* Modificador Tipo de dato Long */
( long ) {return new Symbol(sym.Long, yychar, yyline, yytext());}

/* Modificador Tipo de dato Short */
( short ) {return new Symbol(sym.Short, yychar, yyline, yytext());}

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return new Symbol(sym.Linea, yychar, yyline, yytext());}

/* Comillas */
( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/* Operador Igual */
( "=" ) {return new Symbol(sym.Igual, yychar, yyline, yytext());}

/* Operador Suma */
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}

/* Operador Resta */
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}

/* Operador Division */
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parent_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parent_c, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/* Palabra reservada If */
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}

/* Palabra reservada Register */
( register ) {return new Symbol(sym.Register, yychar, yyline, yytext());}

/* Palabra reservada Else */
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}

/* Palabra reservada Return */
( return ) {return new Symbol(sym.Return, yychar, yyline, yytext());}

/* Palabra reservada Const */
( const ) {return new Symbol(sym.Const, yychar, yyline, yytext());}

/* Palabra reservada Continue */
( continue ) {return new Symbol(sym.Continue, yychar, yyline, yytext());}

/* Palabra reservada Switch */
( switch ) {return new Symbol(sym.Switch, yychar, yyline, yytext());}

/* Palabra reservada Typedef */
( typedef ) {return new Symbol(sym.Typedef, yychar, yyline, yytext());}

/* Palabra reservada Case */
( case ) {return new Symbol(sym.Case, yychar, yyline, yytext());}

/* Palabra reservada Void */
( void ) {return new Symbol(sym.Void, yychar, yyline, yytext());}

/* Palabra reservada Break */
( break ) {return new Symbol(sym.Break, yychar, yyline, yytext());}

/* Palabra reservada Default */
( default ) {return new Symbol(sym.Default, yychar, yyline, yytext());}

/* Palabra reservada Do */
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}

/* Palabra reservada While */
( while ) {return new Symbol(sym.While, yychar, yyline, yytext());}

/* Palabra reservada Struct */
( struct ) {return new Symbol(sym.Struct, yychar, yyline, yytext());}

/* Palabra reservada For */
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}

/* Palabra reservada Include */
( include ) {return new Symbol(sym.Include, yychar, yyline, yytext());}

/* Palabra reservada Iostream */
( iostream ) {return new Symbol(sym.Iostream, yychar, yyline, yytext());}

/* Palabra reservada Using */
( using ) {return new Symbol(sym.Using, yychar, yyline, yytext());}

/* Palabra reservada Unsigned */
( unsigned ) {return new Symbol(sym.Undisgned, yychar, yyline, yytext());}

/* Palabra reservada Namespace */
( namespace ) {return new Symbol(sym.Namespace, yychar, yyline, yytext());}

/* Palabra reservada Std */
( std ) {return new Symbol(sym.Std, yychar, yyline, yytext());}

/* Palabra reservada Cin */
( cin ) {return new Symbol(sym.Cin, yychar, yyline, yytext());}

/* Palabra reservada define */
( define ) {return new Symbol(sym.Define, yychar, yyline, yytext());}

/* Palabra reservada Cout */
( cuot ) {return new Symbol(sym.Cout, yychar, yyline, yytext());}

/* Palabra reservada Scanf */
( scanf ) {return new Symbol(sym.Scanf, yychar, yyline, yytext());}

/* Palabra reservada Printf */
( printf ) {return new Symbol(sym.Printf, yychar, yyline, yytext());}

/* Marcador de inicio de algoritmo */
( "main" ) {return new Symbol(sym.Main, yychar, yyline, yytext());}

/* Operador logico and */
( "&&" ) {lexemas=yytext(); return new Symbol(sym.Op_log_and, yychar, yyline, yytext()); } 

/* Operador logico or */
( "||" ) {lexemas=yytext(); return new Symbol(sym.Op_log_or, yychar, yyline, yytext()); } 

/* Operador logico not */
( "!" ) {lexemas=yytext(); return new Symbol(sym.Op_log_not, yychar, yyline, yytext()); } 

/* Operador logico and bit a bit */
( "&" ) {lexemas=yytext(); return new Symbol(sym.Op_log_and_bit, yychar, yyline, yytext()); } 

/* Operador logico or bit a bit */
( "|" ) {lexemas=yytext(); return new Symbol(sym.Op_log_or_bit, yychar, yyline, yytext()); }

/* Operador Relacional Mayor que */
( ">" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_mayor_que, yychar, yyline, yytext());}

/* Operador Relacional Menor que */
( "<"  ) {lexemas = yytext(); return new Symbol(sym.Op_rel_menor_que, yychar, yyline, yytext());}

/* Operador Relacional Equivalente */
( "==" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_equivalente, yychar, yyline, yytext());}

/* Operador Relacional Diferente */
( "!=" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_diferente, yychar, yyline, yytext());}

/* Operador Relacional Mayor o Igual */
( ">=" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_mayor_igual, yychar, yyline, yytext());}

/* Operador Relacional Menor o Igual */
( "<=" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_menor_igual, yychar, yyline, yytext());}

/* Operador Relacional Desplazamiento Izquierda */
( "<<" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_desplaz_izq, yychar, yyline, yytext());}

/* Operador Relacional Desplazamiento Derecha */
( ">>" ) {lexemas = yytext(); return new Symbol(sym.Op_rel_desplaz_der, yychar, yyline, yytext());}

/* Operador Atribucion Suma */
( "+=" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_suma, yychar, yyline, yytext()); }

/* Operador Atribucion Resta */
( "-=" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_resta, yychar, yyline, yytext()); }

/* Operador asignacion libreria */
( "#" ) {lexemas = yytext(); return new Symbol(sym.Op_inclu_lib, yychar, yyline, yytext());}

/* Operador Atribucion Producto */
( "*=") {lexemas = yytext(); return new Symbol(sym.Op_atr_producto, yychar, yyline, yytext()); }

/* Operador Atribucion Division */
( "/=" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_division, yychar, yyline, yytext()); }

/* Operador Atribucion Modulo */
( "%=" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_modulo, yychar, yyline, yytext()); }

/* Operador Incremento */
( "++" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_incremento, yychar, yyline, yytext()); }

/* Operador Decremento */
( "--" ) {lexemas = yytext(); return new Symbol(sym.Op_atr_decremento, yychar, yyline, yytext()); }

/* Operador Booleano True */
( true ) {return new Symbol(sym.True, yychar, yyline, yytext());}

/* Operador Booleano False */
( false ) {return new Symbol(sym.False, yychar, yyline, yytext());}

/* Punto y coma */
( ";" ) {return new Symbol(sym.P_coma, yychar, yyline, yytext());}

/* Coma */
( "," ) {return new Symbol(sym.Coma, yychar, yyline, yytext());}

/* Punto */
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}

/* Dos_puntos */
( ":" ) {return new Symbol(sym.Dos_puntos, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}