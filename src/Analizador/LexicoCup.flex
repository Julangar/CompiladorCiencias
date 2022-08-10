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

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Comillas */
( "\"" ) {return new Symbol(sym.Comillas, yychar, yyline, yytext());}

/*                  Palabras reservadas                 */

/* Palabra reservada Auto */
( auto ) {return new Symbol(sym.Auto, yychar, yyline, yytext());}

/* Palabra reservada Const */
( const ) {return new Symbol(sym.Const, yychar, yyline, yytext());}

/* Palabra reservada Enum */
( enum ) {return new Symbol(sym.Enum, yychar, yyline, yytext());}

/* Palabra reservada Goto */
( goto ) {return new Symbol(sym.Goto, yychar, yyline, yytext());}

/* Palabra reservada Sizeof */
( sizeof ) {return new Symbol(sym.Sizeof, yychar, yyline, yytext());}

/* Palabra reservada Register */
( register ) {return new Symbol(sym.Register, yychar, yyline, yytext());}

/* Palabra reservada Unsigned */
( unsigned ) {return new Symbol(sym.Unsigned, yychar, yyline, yytext());}

/* Palabra reservada Continue */
( continue ) {return new Symbol(sym.Continue, yychar, yyline, yytext());}

/* Palabra reservada Extern */
( extern ) {return new Symbol(sym.Extern, yychar, yyline, yytext());}

/* Palabra reservada Return */
( return ) {return new Symbol(sym.Return, yychar, yyline, yytext());}

/* Palabra reservada Static */
( static ) {return new Symbol(sym.Static, yychar, yyline, yytext());}

/* Palabra reservada Void */
( void ) {return new Symbol(sym.Void, yychar, yyline, yytext());}

/* Palabra reservada Struct */
( struct ) {return new Symbol(sym.Struct, yychar, yyline, yytext());}

/* Palabra reservada Typedef */
( typedef ) {return new Symbol(sym.Typedef, yychar, yyline, yytext());}

/* Palabra reservada Volatile */
( volatile ) {return new Symbol(sym.Volatile, yychar, yyline, yytext());}

/* Palabra reservada Signed */
( signed ) {return new Symbol(sym.Signed, yychar, yyline, yytext());}

/* Palabra reservada Union */
( union ) {return new Symbol(sym.Union, yychar, yyline, yytext());}

/*                  Tipos de datos                  */

/* Palabra reservada Byte */
( byte ) {return new Symbol(sym.Byte, yychar, yyline, yytext());}

/* Palabra reservada Int */
( int ) {return new Symbol(sym.Int, yychar, yyline, yytext());}

/* Palabra reservada Short */
( short ) {return new Symbol(sym.Short, yychar, yyline, yytext());}

/* Palabra reservada Long */
( long ) {return new Symbol(sym.Long, yychar, yyline, yytext());}

/* Palabra reservada Float */
( float ) {return new Symbol(sym.Float, yychar, yyline, yytext());}

/* Palabra reservada Double */
( double ) {return new Symbol(sym.Double, yychar, yyline, yytext());}

/* Palabra reservada Char */
( char ) {return new Symbol(sym.Char, yychar, yyline, yytext());}

/* Palabra reservada String */
( String ) {return new Symbol(sym.Cadena, yychar, yyline, yytext());}

/*                  Estructuras de control                  */

/* Palabra reservada If */
( if ) {return new Symbol(sym.If, yychar, yyline, yytext());}

/* Palabra reservada Else */
( else ) {return new Symbol(sym.Else, yychar, yyline, yytext());}

/* Palabra reservada Do */
( do ) {return new Symbol(sym.Do, yychar, yyline, yytext());}

/* Palabra reservada While */
( while ) {return new Symbol(sym.While, yychar, yyline, yytext());}

/* Palabra reservada For */
( for ) {return new Symbol(sym.For, yychar, yyline, yytext());}

/* Palabra reservada Switch */
( switch ) {return new Symbol(sym.Switch, yychar, yyline, yytext());}

/* Palabra reservada Case */
( case ) {return new Symbol(sym.Case, yychar, yyline, yytext());}

/* Palabra reservada Default */
( default ) {return new Symbol(sym.Default, yychar, yyline, yytext());}

/* Palabra reservada Break */
( break ) {return new Symbol(sym.Break, yychar, yyline, yytext());}

/*                  Operadores Aritmeticos                  */

/* Operador Suma */
( "+" ) {return new Symbol(sym.Suma, yychar, yyline, yytext());}

/* Operador Resta */
( "-" ) {return new Symbol(sym.Resta, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*" ) {return new Symbol(sym.Multiplicacion, yychar, yyline, yytext());}

/* Operador Division */
( "/" ) {return new Symbol(sym.Division, yychar, yyline, yytext());}

/* Operador Modulo */
( "%" ) {return new Symbol(sym.Modulo, yychar, yyline, yytext());}

/*                  Operadores Logicos                 */

/* Operador OR logico */
( "||" ) {return new Symbol(sym.Op_or, yychar, yyline, yytext());}

/* Operador AND logico */
( "&&" ) {return new Symbol(sym.Op_and, yychar, yyline, yytext());}

/* Operador OR bit a bit */
( "|" ) {return new Symbol(sym.Op_or_b2b, yychar, yyline, yytext());}

/* Operador AND bit a bit */
( "&" ) {return new Symbol(sym.Op_and_b2b, yychar, yyline, yytext());}

/* Operador XOR bit a bit */
( "^" ) {return new Symbol(sym.Op_xor_b2b, yychar, yyline, yytext());}

/* Operador NOT */
( "!" ) {return new Symbol(sym.Op_not, yychar, yyline, yytext());}

/*              Operadores Relacionales             */

/* Operador Menor que */
( "<" ) {return new Symbol(sym.Op_smaller_than, yychar, yyline, yytext());}

/* Operador Menor o igual que */
( "<=" ) {return new Symbol(sym.Op_smaller_than_equal_to, yychar, yyline, yytext());}

/* Operador Mayor que */
( ">" ) {return new Symbol(sym.Op_greater_than, yychar, yyline, yytext());}

/* Operador Mayor o igual que */
( ">=" ) {return new Symbol(sym.Op_greater_than_equal_to, yychar, yyline, yytext());}

/* Operador Igual */
( "==" ) {return new Symbol(sym.Op_equal, yychar, yyline, yytext());}

/* Operador Diferente */
( "!=" ) {return new Symbol(sym.Op_not_equal, yychar, yyline, yytext());}

/*                  Operadores de Asignacion                    */

/* Operador Asignacion */
( "=" ) {return new Symbol(sym.Op_asignacion, yychar, yyline, yytext());}

/* Operador Suma */
( "+=" ) {return new Symbol(sym.Op_suma, yychar, yyline, yytext());}

/* Operador Resta */
( "-=" ) {return new Symbol(sym.Op_resta, yychar, yyline, yytext());}

/* Operador Multiplicacion */
( "*=" ) {return new Symbol(sym.Op_multiplicacion, yychar, yyline, yytext());}

/* Operador Division */
( "/=" ) {return new Symbol(sym.Op_division, yychar, yyline, yytext());}

/* Operador Modulo */
( "%=" ) {return new Symbol(sym.Op_modulo, yychar, yyline, yytext());}

/*                  Otros Operadores                    */

/* Operador desplazamiento bits derecha */
( ">>" ) {return new Symbol(sym.Op_desplazamiento_bits_der, yychar, yyline, yytext());}

/* Operador desplazamiento bits izquierda */
( "<<" ) {return new Symbol(sym.Op_desplazamiento_bits_izq, yychar, yyline, yytext());}

/* Operador incremento */
( "++" ) {return new Symbol(sym.Op_incremento, yychar, yyline, yytext());}

/* Operador decremento */
( "--" ) {return new Symbol(sym.Op_decremento, yychar, yyline, yytext());}

/* Operador True */
( true ) {return new Symbol(sym.Op_true, yychar, yyline, yytext());}

/* Operador False */
( false ) {return new Symbol(sym.Op_false, yychar, yyline, yytext());}

/*                  Delimitadores                 */

/* Parentesis de apertura */
( "(" ) {return new Symbol(sym.Parentesis_a, yychar, yyline, yytext());}

/* Parentesis de cierre */
( ")" ) {return new Symbol(sym.Parentesis_c, yychar, yyline, yytext());}

/* Llave de apertura */
( "{" ) {return new Symbol(sym.Llave_a, yychar, yyline, yytext());}

/* Llave de cierre */
( "}" ) {return new Symbol(sym.Llave_c, yychar, yyline, yytext());}

/* Corchete de apertura */
( "[" ) {return new Symbol(sym.Corchete_a, yychar, yyline, yytext());}

/* Corchete de cierre */
( "]" ) {return new Symbol(sym.Corchete_c, yychar, yyline, yytext());}

/*                  Librerias                   */

/* Math.h */
( "math.h" ) {return new Symbol(sym.Math, yychar, yyline, yytext());}

/* Stdio.h */
( "stdio.h" ) {return new Symbol(sym.Stdio, yychar, yyline, yytext());}

/* Stdlib.h */
( "stdlib.h" ) {return new Symbol(sym.Stdlib, yychar, yyline, yytext());}

/* Time.h */
( "time.h" ) {return new Symbol(sym.Time, yychar, yyline, yytext());}

/* Iostream */
( "iostream" ) {return new Symbol(sym.Iostream, yychar, yyline, yytext());}

/* Palabra reservada Using */
( using ) {return new Symbol(sym.Using, yychar, yyline, yytext());}

/* Palabra reservada Namespace */
( namespace ) {return new Symbol(sym.Namespace, yychar, yyline, yytext());}

/* Palabra reservada Std */
( std ) {return new Symbol(sym.Std, yychar, yyline, yytext());}

/*                  I/O                 */

/* Palabra reservada Cout */
( cout ) {return new Symbol(sym.Cout, yychar, yyline, yytext());}

/* Palabra reservada Cin */
( cin ) {return new Symbol(sym.Cin, yychar, yyline, yytext());}

/* Palabra reservada Endl */
( endl ) {return new Symbol(sym.Endl, yychar, yyline, yytext());}

/*                  Otros                   */

/* Marcador de inicio de algoritmo */
( "main" ) {return new Symbol(sym.Main, yychar, yyline, yytext());}

/* Palabra Reservada SystemC */
( "system" ) {return new Symbol(sym.SystemC, yychar, yyline, yytext());}

/* Marcador de inicio de impresion en pantalla */
( "printf" ) {return new Symbol(sym.Printf, yychar, yyline, yytext());}

/* Punto */
( "." ) {return new Symbol(sym.Punto, yychar, yyline, yytext());}

/* Coma */
( "," ) {return new Symbol(sym.Coma, yychar, yyline, yytext());}

/* Dos puntos */
( ":" ) {return new Symbol(sym.Dos_puntos, yychar, yyline, yytext());}

/* Punto y coma */
( ";" ) {return new Symbol(sym.Punto_coma, yychar, yyline, yytext());}

/* Almohadilla */
( "#" ) {return new Symbol(sym.Almohadilla, yychar, yyline, yytext());}

/* Palabra reservada Include */
( "include" ) {return new Symbol(sym.Include, yychar, yyline, yytext());}

/* Identificador */
{L}({L}|{D})* {return new Symbol(sym.Identificador, yychar, yyline, yytext());}

/* Numero */
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}

/* Error de analisis */
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
