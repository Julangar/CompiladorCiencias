
//----------------------------------------------------
// The following code was generated by CUP v0.11a beta 20060608
// Tue Jun 14 14:42:20 COT 2022
//----------------------------------------------------

package Analizador;

import java_cup.runtime.Symbol;

/** CUP v0.11a beta 20060608 generated parser.
  * @version Tue Jun 14 14:42:20 COT 2022
  */
public class Sintaxis extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public Sintaxis() {super();}

  /** Constructor which sets the default scanner. */
  public Sintaxis(java_cup.runtime.Scanner s) {super(s);}

  /** Constructor which sets the default scanner. */
  public Sintaxis(java_cup.runtime.Scanner s, java_cup.runtime.SymbolFactory sf) {super(s,sf);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\036\000\002\002\004\000\002\002\011\000\002\002" +
    "\010\000\002\003\004\000\002\003\003\000\002\003\004" +
    "\000\002\003\003\000\002\003\004\000\002\003\003\000" +
    "\002\004\005\000\002\004\005\000\002\004\007\000\002" +
    "\004\007\000\002\004\011\000\002\004\007\000\002\004" +
    "\011\000\002\004\006\000\002\004\006\000\002\004\010" +
    "\000\002\004\010\000\002\004\011\000\002\004\011\000" +
    "\002\007\003\000\002\007\005\000\002\007\005\000\002" +
    "\007\005\000\002\007\006\000\002\007\007\000\002\005" +
    "\011\000\002\006\015" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\125\000\006\015\006\036\004\001\002\000\004\030" +
    "\123\001\002\000\004\002\122\001\002\000\004\036\007" +
    "\001\002\000\004\030\010\001\002\000\004\031\011\001" +
    "\002\000\004\032\012\001\002\000\012\006\016\007\022" +
    "\010\021\015\017\001\002\000\014\006\ufffd\007\ufffd\010" +
    "\ufffd\015\ufffd\033\ufffd\001\002\000\014\006\016\007\022" +
    "\010\021\015\017\033\121\001\002\000\014\006\ufff9\007" +
    "\ufff9\010\ufff9\015\ufff9\033\ufff9\001\002\000\006\026\076" +
    "\041\077\001\002\000\004\041\071\001\002\000\014\006" +
    "\ufffb\007\ufffb\010\ufffb\015\ufffb\033\ufffb\001\002\000\004" +
    "\030\042\001\002\000\004\041\023\001\002\000\006\016" +
    "\025\025\024\001\002\000\004\005\034\001\002\000\004" +
    "\005\026\001\002\000\006\005\027\041\030\001\002\000" +
    "\004\037\033\001\002\000\004\005\031\001\002\000\004" +
    "\037\032\001\002\000\014\006\uffec\007\uffec\010\uffec\015" +
    "\uffec\033\uffec\001\002\000\014\006\uffee\007\uffee\010\uffee" +
    "\015\uffee\033\uffee\001\002\000\006\005\035\041\036\001" +
    "\002\000\004\037\041\001\002\000\004\005\037\001\002" +
    "\000\004\037\040\001\002\000\014\006\uffed\007\uffed\010" +
    "\uffed\015\uffed\033\uffed\001\002\000\014\006\uffef\007\uffef" +
    "\010\uffef\015\uffef\033\uffef\001\002\000\006\027\044\041" +
    "\045\001\002\000\004\031\056\001\002\000\004\031\uffeb" +
    "\001\002\000\004\024\046\001\002\000\012\005\050\027" +
    "\051\041\052\042\047\001\002\000\004\031\uffe9\001\002" +
    "\000\006\005\053\041\054\001\002\000\004\031\uffea\001" +
    "\002\000\004\031\uffe8\001\002\000\004\031\uffe7\001\002" +
    "\000\004\005\055\001\002\000\004\031\uffe6\001\002\000" +
    "\004\032\057\001\002\000\012\006\016\007\022\010\021" +
    "\015\017\001\002\000\014\006\016\007\022\010\021\015" +
    "\017\033\061\001\002\000\016\006\uffe5\007\uffe5\010\uffe5" +
    "\011\065\015\uffe5\033\uffe5\001\002\000\014\006\ufffe\007" +
    "\ufffe\010\ufffe\015\ufffe\033\ufffe\001\002\000\014\006\ufffa" +
    "\007\ufffa\010\ufffa\015\ufffa\033\ufffa\001\002\000\014\006" +
    "\ufffc\007\ufffc\010\ufffc\015\ufffc\033\ufffc\001\002\000\004" +
    "\032\066\001\002\000\012\006\016\007\022\010\021\015" +
    "\017\001\002\000\014\006\016\007\022\010\021\015\017" +
    "\033\070\001\002\000\014\006\uffe4\007\uffe4\010\uffe4\015" +
    "\uffe4\033\uffe4\001\002\000\006\016\073\037\072\001\002" +
    "\000\014\006\ufff8\007\ufff8\010\ufff8\015\ufff8\033\ufff8\001" +
    "\002\000\004\042\074\001\002\000\004\037\075\001\002" +
    "\000\014\006\ufff5\007\ufff5\010\ufff5\015\ufff5\033\ufff5\001" +
    "\002\000\004\041\117\001\002\000\012\016\103\025\100" +
    "\026\102\037\101\001\002\000\004\042\112\001\002\000" +
    "\014\006\ufff7\007\ufff7\010\ufff7\015\ufff7\033\ufff7\001\002" +
    "\000\004\037\111\001\002\000\004\042\104\001\002\000" +
    "\006\037\105\040\106\001\002\000\014\006\ufff3\007\ufff3" +
    "\010\ufff3\015\ufff3\033\ufff3\001\002\000\004\042\107\001" +
    "\002\000\004\037\110\001\002\000\014\006\ufff2\007\ufff2" +
    "\010\ufff2\015\ufff2\033\ufff2\001\002\000\014\006\ufff1\007" +
    "\ufff1\010\ufff1\015\ufff1\033\ufff1\001\002\000\006\037\113" +
    "\040\114\001\002\000\014\006\ufff6\007\ufff6\010\ufff6\015" +
    "\ufff6\033\ufff6\001\002\000\004\042\115\001\002\000\004" +
    "\037\116\001\002\000\014\006\ufff4\007\ufff4\010\ufff4\015" +
    "\ufff4\033\ufff4\001\002\000\004\037\120\001\002\000\014" +
    "\006\ufff0\007\ufff0\010\ufff0\015\ufff0\033\ufff0\001\002\000" +
    "\004\002\000\001\002\000\004\002\001\001\002\000\004" +
    "\031\124\001\002\000\004\032\125\001\002\000\012\006" +
    "\016\007\022\010\021\015\017\001\002\000\014\006\016" +
    "\007\022\010\021\015\017\033\127\001\002\000\004\002" +
    "\uffff\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\125\000\004\002\004\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\012\003\013\004\012\005" +
    "\017\006\014\001\001\000\002\001\001\000\010\004\061" +
    "\005\063\006\062\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\007\042\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\012\003\057\004\012\005\017\006\014\001\001" +
    "\000\010\004\061\005\063\006\062\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\012\003\066\004\012\005\017\006" +
    "\014\001\001\000\010\004\061\005\063\006\062\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\012\003\125\004\012\005\017\006\014\001\001\000\010" +
    "\004\061\005\063\006\062\001\001\000\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$Sintaxis$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$Sintaxis$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$Sintaxis$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 0;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}



    private Symbol s;
    
    public void syntax_error(Symbol s){
        this.s = s;
    }

    public Symbol getS(){
        return this.s;
}

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$Sintaxis$actions {
  private final Sintaxis parser;

  /** Constructor */
  CUP$Sintaxis$actions(Sintaxis parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$Sintaxis$do_action(
    int                        CUP$Sintaxis$act_num,
    java_cup.runtime.lr_parser CUP$Sintaxis$parser,
    java.util.Stack            CUP$Sintaxis$stack,
    int                        CUP$Sintaxis$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$Sintaxis$result;

      /* select the action based on the action number */
      switch (CUP$Sintaxis$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 29: // IF_ELSE ::= If Parent_a SENTENCIA_BOOLEANA Parent_c Llave_a SENTENCIA Llave_c Else Llave_a SENTENCIA Llave_c 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("IF_ELSE",4, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-10)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 28: // IF ::= If Parent_a SENTENCIA_BOOLEANA Parent_c Llave_a SENTENCIA Llave_c 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("IF",3, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 27: // SENTENCIA_BOOLEANA ::= Identificador Op_relacional Comillas Identificador Comillas 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-4)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 26: // SENTENCIA_BOOLEANA ::= Identificador Op_relacional Comillas Comillas 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-3)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 25: // SENTENCIA_BOOLEANA ::= Identificador Op_relacional Identificador 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-2)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 24: // SENTENCIA_BOOLEANA ::= Identificador Op_relacional Numero 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-2)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 23: // SENTENCIA_BOOLEANA ::= Identificador Op_relacional Op_booleano 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-2)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 22: // SENTENCIA_BOOLEANA ::= Op_booleano 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA_BOOLEANA",5, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 21: // DECLARACION ::= Cadena Identificador Igual Comillas Identificador Comillas P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 20: // DECLARACION ::= Cadena Identificador Op_atribucion Comillas Identificador Comillas P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 19: // DECLARACION ::= Cadena Identificador Igual Comillas Comillas P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-5)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 18: // DECLARACION ::= Cadena Identificador Op_atribucion Comillas Comillas P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-5)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 17: // DECLARACION ::= T_dato Op_incremento Identificador P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-3)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 16: // DECLARACION ::= T_dato Identificador Op_incremento P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-3)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // DECLARACION ::= T_dato Identificador Igual Numero Punto Numero P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // DECLARACION ::= T_dato Identificador Igual Numero P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-4)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // DECLARACION ::= T_dato Identificador Op_atribucion Numero Punto Numero P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // DECLARACION ::= Int Identificador Igual Numero P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-4)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // DECLARACION ::= T_dato Identificador Op_atribucion Numero P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-4)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // DECLARACION ::= T_dato Identificador P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-2)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // DECLARACION ::= Int Identificador P_coma 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("DECLARACION",2, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-2)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // SENTENCIA ::= IF_ELSE 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // SENTENCIA ::= SENTENCIA IF_ELSE 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // SENTENCIA ::= IF 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // SENTENCIA ::= SENTENCIA IF 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // SENTENCIA ::= DECLARACION 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // SENTENCIA ::= SENTENCIA DECLARACION 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("SENTENCIA",1, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // INICIO ::= Main Parent_a Parent_c Llave_a SENTENCIA Llave_c 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("INICIO",0, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-5)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // INICIO ::= Int Main Parent_a Parent_c Llave_a SENTENCIA Llave_c 
            {
              Object RESULT =null;

              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("INICIO",0, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-6)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          return CUP$Sintaxis$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // $START ::= INICIO EOF 
            {
              Object RESULT =null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)).value;
		RESULT = start_val;
              CUP$Sintaxis$result = parser.getSymbolFactory().newSymbol("$START",0, ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.elementAt(CUP$Sintaxis$top-1)), ((java_cup.runtime.Symbol)CUP$Sintaxis$stack.peek()), RESULT);
            }
          /* ACCEPT */
          CUP$Sintaxis$parser.done_parsing();
          return CUP$Sintaxis$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}

