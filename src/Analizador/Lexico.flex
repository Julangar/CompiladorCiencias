package Analizador;
import static Analizador.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t \r]+
%{
    public String lexemas;
%}
%%
/* Integer */
( int ) {lexemas=yytext(); return Int;}

/* Char */
( char ) {lexemas=yytext(); return Char;}

/* Byte */
( byte ) {lexemas=yytext(); return Byte;}

/* Double */
( double ) {lexemas=yytext(); return Double;}

/* Float */
( float ) {lexemas=yytext(); return Float;}

/* Tipo de dato String */
( String ) {lexemas=yytext(); return Cadena;}

/* Long */
( long ) {lexemas=yytext(); return Long;}

/* Palabra reservada Short */
( short ) {lexemas=yytext(); return Short;}

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Comillas */
( "\"" ) {lexemas=yytext(); return Comillas;}

/* Operador Igual */
( "=" ) {lexemas=yytext(); return Igual;}

/* Operador Suma */
( "+" ) {lexemas=yytext(); return Suma;}

/* Operador Resta */
( "-" ) {lexemas=yytext(); return Resta;}

/* Operador Multiplicacion */
( "*" ) {lexemas=yytext(); return Multiplicacion;}

/* Operador Division */
( "/" ) {lexemas=yytext(); return Division;}

/* Parentesis de apertura */
( "(" ) {lexemas=yytext(); return Parent_a;}

/* Parentesis de cierre */
( ")" ) {lexemas=yytext(); return Parent_c;}

/* Llave de apertura */
( "{" ) {lexemas=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexemas=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexemas=yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexemas=yytext(); return Corchete_c;}

/* Palabra reservada If */
( if ) {lexemas=yytext(); return If; }

/* Palabra reservada Register */
( register ) {lexemas=yytext(); return Register;}

/* Palabra reservada Else */
( else ) {lexemas=yytext(); return Else; }

/* Palabra reservada Return */
( return ) {lexemas=yytext(); return Return;}

/* Palabra reservada Const */
( const ) {lexemas=yytext(); return Const;}

/* Palabra reservada Continue */
( continue ) {lexemas=yytext(); return Continue;}

/* Palabra reservada Switch */
( switch ) {lexemas=yytext(); return Switch; }

/* Palabra reservada Typedef */
( typedef ) {lexemas=yytext(); return Typedef;}

/* Palabra reservada Case */
( case ) {lexemas=yytext(); return Case; }

/* Palabra resrvada Void */
( void ) {lexemas=yytext(); return Void;}

/* Palabra reservada Break */
( break ) {lexemas=yytext(); return Break; }

/* Palabra reservada Default */
( default ) {lexemas=yytext(); return Default; }

/* Palabra reservada Do */
( do ) {lexemas=yytext(); return Do; }

/* Palabra reservada While */
( while ) {lexemas=yytext(); return While; }

/* Palabra reservada Struct */
( struct ) {lexemas=yytext(); return Struct;}

/* Palabra reservada For */
( for ) {lexemas=yytext (); return For;}

/* Palabra reservada Include */
( include ) {lexemas=yytext(); return Include; }

/* Palabra reservada Iostream */
( iostream ) {lexemas=yytext(); return Iostream; }

/* Palabra reservada Using */
( using ) {lexemas=yytext(); return Using; }

/* Palabra reservada Unsigned*/
( unsigned ) {lexemas=yytext(); return Unsigned;}

/* Palabra reservada Namespace */
( namespace ) {lexemas=yytext(); return Namespace; }

/* Palabra reservada Std*/
( std ) {lexemas=yytext(); return Std; }

/* Palabra reservada Cin*/
( cin ) {lexemas=yytext(); return Cin; }

/* Palabra reservada define*/
( define ) {lexemas=yytext(); return Define; } 

/* Palabra reservada Cout*/
( cout ) {lexemas=yytext(); return Cout; }

/* Palabra reservada Scanf*/
( scanf ) {lexemas=yytext(); return Scanf; }

/* Palabra reservada Printf*/
( printf ) {lexemas=yytext(); return Printf; }

/* Marcador de inicio de algoritmo */
( "main" ) {lexemas=yytext(); return Main;}

/* Operador logico and */
( "&&" ) {lexemas=yytext(); return Op_log_and; } 

/* Operador logico or */
( "||" ) {lexemas=yytext(); return Op_log_or; } 

/* Operador logico not */
( "!" ) {lexemas=yytext(); return Op_log_not; } 

/* Operador logico and bit a bit */
( "&" ) {lexemas=yytext(); return Op_log_and_bit; } 

/* Operador logico or bit a bit */
( "|" ) {lexemas=yytext(); return Op_log_or_bit; }

/* Operador Relacional Mayor que */
( ">" ) {lexemas=yytext(); return Op_rel_mayor_que;}

/* Operador Relacional Menor que */
( "<"  ) {lexemas=yytext(); return Op_rel_menor_que;}

/* Operador Relacional Equivalente */
( "==" ) {lexemas=yytext(); return Op_rel_equivalente;}

/* Operador Relacional Diferente */
( "!=" ) {lexemas=yytext(); return Op_rel_diferente;}

/* Operador Relacional Mayor o Igual */
( ">=" ) {lexemas=yytext(); return Op_rel_mayor_igual;}

/* Operador Relacional Menor o Igual */
( "<=" ) {lexemas=yytext(); return Op_rel_menor_igual;}

/* Operador Relacional Desplazamiento Izquierda */
( "<<" ) {lexemas=yytext(); return Op_rel_desplaz_izq;}

/* Operador Relacional Desplazamiento Derecha */
( ">>" ) {lexemas=yytext(); return Op_rel_desplaz_der;}

/* Operador Atribucion Suma */
( "+=" ) {lexemas=yytext(); return Op_atr_suma; }

/* Operador Atribucion Resta */
( "-=" ) {lexemas=yytext(); return Op_atr_resta; }

/* Operador asignacion libreria */
( "#" ) {lexemas=yytext(); return Op_inclu_lib;}

/* Operador Atribucion Producto */
( "*=") {lexemas=yytext(); return Op_atr_producto; }

/* Operador Atribucion Division */
( "/=" ) {lexemas=yytext(); return Op_atr_division; }

/* Operador Atribucion Modulo */
( "%=" ) {lexemas=yytext(); return Op_atr_modulo; }

/* Operadores Incremento */
( "++" ) {lexemas=yytext(); return Op_atr_incremento; }

/* Operadores Decremento */
( "--" ) {lexemas=yytext(); return Op_atr_decremento; }

/* Operador Booleano True */
( true ) {lexemas=yytext(); return True; }

/* Operador Booleano False */
( false ) {lexemas=yytext(); return False; }

/* P_coma */
( ";" ) {lexemas=yytext(); return P_coma;}

/* Coma */
( "," ) {lexemas=yytext(); return Coma;}

/* Punto */
( "." ) {lexemas=yytext(); return Punto;}

/* Dos_puntos */
( ":" ) {lexemas=yytext(); return Dos_puntos;}

/* Identificador */
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}

/* Numero */
{D}+|("-"){D}+|{D}+("."{D}+)|("-"){D}+("."{D}+) {lexemas=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}