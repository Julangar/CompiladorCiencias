/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizador;

/**
 *
 * @author mdelgado
 */
public enum Tokens {
    Linea,
    Comillas,
    /*  Palabras Reservadas */
    Auto,
    Const,
    Enum,
    Goto,
    Sizeof,
    Register,
    Unsigned,
    Continue,
    Extern,
    Return,
    Static,
    Void,
    Struct,
    Typedef,
    Volatile,
    Signed,
    Union,
    /*  Tipos de datos  */
    Byte,
    Int,
    Short,
    Long,
    Float,
    Double,
    Char,
    Cadena,
    /*  Estructuras de control  */
    If,
    Else,
    Do,
    While,
    For,
    Switch,
    Case,
    Default,
    Break,
    /*  Operadores Arirmeticos  */
    Suma,
    Resta,
    Multiplicacion,
    Division,
    Modulo,
    /*  Operadores Logicos  */
    Op_or,
    Op_and,
    Op_or_b2b,
    Op_and_b2b,
    Op_xor_b2b,
    Op_not,
    /*  Operadores Relacionales  */
    Op_smaller_than,
    Op_smaller_than_equal_to,
    Op_greater_than,
    Op_greater_than_equal_to,
    Op_equal,
    Op_not_equal,
    /*  Operadores de Asignacion    */
    Op_asignacion,
    Op_suma,
    Op_resta,
    Op_multiplicacion,
    Op_division,
    Op_modulo,
    /*  Otros Operadores    */
    Op_desplazamiento_bits_der,
    Op_desplazamiento_bits_izq,
    Op_incremento,
    Op_decremento,
    Op_true,
    Op_false,
    /*  Delimitadores   */
    Parentesis_a,
    Parentesis_c,
    Llave_a,
    Llave_c,
    Corchete_a,
    Corchete_c,
    /*  Librerias  */
    Math,
    Stdio,
    Stdlib,
    Time,
    Iostream,
    Using,
    Namespace,
    Std,
    /*  I/O  */
    Cout,
    Cin,
    Endl,
    /*  Otros   */
    Main,
    SystemC,
    Printf,
    Punto_coma,
    Punto,
    Coma,
    Dos_puntos,
    Almohadilla,
    Include,
    /*  */
    Identificador,
    Numero,
    ERROR
}