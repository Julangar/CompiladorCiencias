package Analizador;
import static Analizador.Tokens.*;
%%
%class Lexico
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t ,\r]+
%{
    public String lexemas;
%}
%%

/* Espacios en blanco */
{espacio} {/*Ignore*/}

/* Comentarios */
( "//"(.)* ) {/*Ignore*/}

/* Salto de linea */
( "\n" ) {return Linea;}

/* Comillas */
( "\"" ) {lexemas=yytext(); return Comillas;}

/*                  Palabras reservadas                 */

/* Palabra reservada Auto */
( auto ) {lexemas=yytext(); return Auto;}

/* Palabra reservada Const */
( const ) {lexemas=yytext(); return Const;}

/* Palabra reservada Enum */
( enum ) {lexemas=yytext(); return Enum;}

/* Palabra reservada Goto */
( goto ) {lexemas=yytext(); return Goto;}

/* Palabra reservada Sizeof */
( sizeof ) {lexemas=yytext(); return Sizeof;}

/* Palabra reservada Register */
( register ) {lexemas=yytext(); return Register;}

/* Palabra reservada Unsigned */
( unsigned ) {lexemas=yytext(); return Unsigned;}

/* Palabra reservada Continue */
( continue ) {lexemas=yytext(); return Continue;}

/* Palabra reservada Extern */
( extern ) {lexemas=yytext(); return Extern;}

/* Palabra reservada Return */
( return ) {lexemas=yytext(); return Return;}

/* Palabra reservada Static */
( static ) {lexemas=yytext(); return Static;}

/* Palabra reservada Void */
( void ) {lexemas=yytext(); return Void;}

/* Palabra reservada Struct */
( struct ) {lexemas=yytext(); return Struct;}

/* Palabra reservada Typedef */
( typedef ) {lexemas=yytext(); return Typedef;}

/* Palabra reservada Volatile */
( volatile ) {lexemas=yytext(); return Volatile;}

/* Palabra reservada Signed */
( signed ) {lexemas=yytext(); return Signed;}

/* Palabra reservada Union */
( union ) {lexemas=yytext(); return Union;}

/*                  Tipos de datos                  */

/* Tipo de dato Byte */
( byte ) {lexemas=yytext(); return Byte;}

/* Tipo de dato Int */
( int ) {lexemas=yytext(); return Int;}

/* Tipo de dato Short */
( short ) {lexemas=yytext(); return Short;}

/* Tipo de dato Long */
( long ) {lexemas=yytext(); return Long;}

/* Tipo de dato Float */
( float ) {lexemas=yytext(); return Float;}

/* Tipo de dato Double */
( double ) {lexemas=yytext(); return Double;}

/* Tipo de dato Char */
( char ) {lexemas=yytext(); return Char;}

/* Tipo de dato String */
( String ) {lexemas=yytext(); return Cadena;}

/*                  Estructuras de control                  */

/* Palabra reservada If */
( if ) {lexemas=yytext(); return If;}

/* Palabra reservada Else */
( else ) {lexemas=yytext(); return Else;}

/* Palabra reservada Do */
( do ) {lexemas=yytext(); return Do;}

/* Palabra reservada While */
( while ) {lexemas=yytext(); return While;}

/* Palabra reservada For */
( for ) {lexemas=yytext(); return For;}

/* Palabra reservada Switch */
( switch ) {lexemas=yytext(); return Switch;}

/* Palabra reservada Case */
( case ) {lexemas=yytext(); return Case;}

/* Palabra reservada Default */
( default ) {lexemas=yytext(); return Default;}

/* Palabra reservada Break */
( break ) {lexemas=yytext(); return Break;}

/*                  Operadores Aritmeticos                  */

/* Operador Suma */
( "+" ) {lexemas=yytext(); return Suma;}

/* Operador Resta */
( "-" ) {lexemas=yytext(); return Resta;}

/* Operador Multiplicacion */
( "*" ) {lexemas=yytext(); return Multiplicacion;}

/* Operador Division */
( "/" ) {lexemas=yytext(); return Division;}

/* Operador Modulo */
( "%" ) {lexemas=yytext(); return Modulo;}

/*                  Operadores Logicos                 */

/* Operador OR logico */
( "||" ) {lexemas=yytext(); return Op_or;}

/* Operador AND logico */
( "&&" ) {lexemas=yytext(); return Op_and;}

/* Operador OR bit a bit */
( "|" ) {lexemas=yytext(); return Op_or_b2b;}

/* Operador AND bit a bit */
( "&" ) {lexemas=yytext(); return Op_and_b2b;}

/* Operador XOR bit a bit */
( "^" ) {lexemas=yytext(); return Op_xor_b2b;}

/* Operador NOT */
( "!" ) {lexemas=yytext(); return Op_not;}

/*              Operadores Relacionales             */

/* Operador Menor que */
( "<" ) {lexemas=yytext(); return Op_smaller_than;}

/* Operador Menor o igual que */
( "<=" ) {lexemas=yytext(); return Op_smaller_than_equal_to;}

/* Operador Mayor que */
( ">" ) {lexemas=yytext(); return Op_greater_than;}

/* Operador Mayor o igual que */
( ">=" ) {lexemas=yytext(); return Op_greater_than_equal_to;}

/* Operador Igual */
( "==" ) {lexemas=yytext(); return Op_equal;}

/* Operador Diferente */
( "!=" ) {lexemas=yytext(); return Op_not_equal;}

/*                  Operadores de Asignacion                    */

/* Operador Asignacion */
( "=" ) {lexemas=yytext(); return Op_asignacion;}

/* Operador Suma */
( "+=" ) {lexemas=yytext(); return Op_suma;}

/* Operador Resta */
( "-=" ) {lexemas=yytext(); return Op_resta;}

/* Operador Multiplicacion */
( "*=" ) {lexemas=yytext(); return Op_multiplicacion;}

/* Operador Division */
( "/=" ) {lexemas=yytext(); return Op_division;}

/* Operador Modulo */
( "%=" ) {lexemas=yytext(); return Op_modulo;}

/*                  Otros Operadores                    */

/* Operador desplazamiento bits derecha */
( ">>" ) {lexemas = yytext(); return Op_desplazamiento_bits_der;}

/* Operador desplazamiento bits izquierda */
( "<<" ) {lexemas = yytext(); return Op_desplazamiento_bits_izq;}

/* Operador incremento */
( "++" ) {lexemas = yytext(); return Op_incremento;}

/* Operador decremento */
( "--" ) {lexemas = yytext(); return Op_decremento;}

/* Operadores True */
( true ) {lexemas = yytext(); return Op_true;}

/* Operadores False */
( false ) {lexemas = yytext(); return Op_false;}

/*                  Delimitadores                 */

/* Parentesis de apertura */
( "(" ) {lexemas=yytext(); return Parentesis_a;}

/* Parentesis de cierre */
( ")" ) {lexemas=yytext(); return Parentesis_c;}

/* Llave de apertura */
( "{" ) {lexemas=yytext(); return Llave_a;}

/* Llave de cierre */
( "}" ) {lexemas=yytext(); return Llave_c;}

/* Corchete de apertura */
( "[" ) {lexemas = yytext(); return Corchete_a;}

/* Corchete de cierre */
( "]" ) {lexemas = yytext(); return Corchete_c;}

/*                  Librerias                   */

/* Math.h */
( "math.h" ) {lexemas=yytext(); return Math;}

/* Stdio.h */
( "stdio.h" ) {lexemas=yytext(); return Stdio;}

/* Stdlib.h */
( "stdlib.h" ) {lexemas=yytext(); return Stdlib;}

/* Time.h */
( "time.h" ) {lexemas=yytext(); return Time;}

/* Iostream */
( "iostream" ) {lexemas=yytext(); return Iostream;}

/* Palabra reservada Using */
( using ) {lexemas=yytext(); return Using;}

/* Palabra reservada Namespace */
( namespace ) {lexemas=yytext(); return Namespace;}

/* Palabra reservada Std */
( std ) {lexemas=yytext(); return Std;}

/*                  I/O                 */

/* Palabra reservada Cout */
( cout ) {lexemas=yytext(); return Cout;}

/* Palabra reservada Cin */
( cin ) {lexemas=yytext(); return Cin;}

/* Palabra reservada Endl */
( endl ) {lexemas=yytext(); return Endl;}

/*                  Otros                   */

/* Marcador de inicio de algoritmo */
( "main" ) {lexemas=yytext(); return Main;}

/* Palabra reservada SystemC */
( "system" ) {lexemas=yytext(); return SystemC;}

/* Marcador de inicio de impresion en pantalla */
( "printf" ) {lexemas=yytext(); return Printf;}

/* Punto */
( "." ) {lexemas=yytext(); return Punto;}

/* Coma */
( "," ) {lexemas=yytext(); return Coma;}

/* Dos puntos */
( ":" ) {lexemas=yytext(); return Dos_puntos;}

/* Punto y coma */
( ";" ) {lexemas=yytext(); return Punto_coma;}

/* Almohadilla */
( "#" ) {lexemas=yytext(); return Almohadilla;}

/* Palabra reservada Include */
( include ) {lexemas=yytext(); return Include;}

/* Identificador */
{L}({L}|{D})* {lexemas=yytext(); return Identificador;}

/* Numero */
{D}+|("-"){D}+|{D}+("."{D}+)|("-"){D}+("."{D}+) {lexemas=yytext(); return Numero;}

/* Error de analisis */
 . {return ERROR;}