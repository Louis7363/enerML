
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WIFI
    | VRAI
    | VIRGULE
    | U_V
    | U_S
    | U_MV
    | U_MS
    | U_MJ
    | U_MAH
    | U_J
    | U_CYCLE
    | U_AN
    | U_AH
    | TOUTES
    | TEXTE
    | TEMPERATURE
    | SUP_EGAL
    | SUP
    | SINON
    | SI
    | POUR
    | POINT_VIRGULE
    | PLUS
    | PAUSE
    | PAR_G
    | PAR_D
    | PAR
    | OU
    | NON
    | NOMBRE of 
# 19 "parser.mly"
       (int)
# 44 "parser.ml"
  
    | MOINS
    | LIRE
    | LED
    | INF_EGAL
    | INF
    | IDENT of 
# 18 "parser.mly"
       (string)
# 54 "parser.ml"
  
    | FOIS
    | FLOTTANT
    | FIN
    | FAUX
    | ETEINDRE
    | ET
    | ENVOYER
    | ENTIER
    | EGAL_EGAL
    | EGAL
    | DIVISE
    | DIFFERENT
    | DEUX_POINTS
    | DECIMAL of 
# 20 "parser.mly"
       (float)
# 72 "parser.ml"
  
    | CONSTANTE
    | CLIGNOTER
    | CHAINE of 
# 21 "parser.mly"
       (string)
# 79 "parser.ml"
  
    | BUDGET
    | BLUETOOTH
    | BATTERIE
    | AUTONOMIE
    | ALLUMER
    | ACCOLADE_G
    | ACCOLADE_D
  
end

include MenhirBasics

# 1 "parser.mly"
  
  open Ast

# 97 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState001 : ('s, _menhir_box_programme) _menhir_state
    (** State 001.
        Stack shape : <empty>.
        Start symbol: programme. *)

  | MenhirState002 : (('s, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_state
    (** State 002.
        Stack shape : PAR_G.
        Start symbol: programme. *)

  | MenhirState011 : ((('s, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul _menhir_cell0_calcul_operateur, _menhir_box_programme) _menhir_state
    (** State 011.
        Stack shape : PAR_G calcul calcul_operateur.
        Start symbol: programme. *)

  | MenhirState019 : (('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 019.
        Stack shape : expression.
        Start symbol: programme. *)

  | MenhirState031 : ((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_state
    (** State 031.
        Stack shape : expression unite.
        Start symbol: programme. *)

  | MenhirState035 : ('s, _menhir_box_programme) _menhir_state
    (** State 035.
        Stack shape : <empty>.
        Start symbol: programme. *)

  | MenhirState036 : (('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 036.
        Stack shape : expression.
        Start symbol: programme. *)

  | MenhirState039 : ((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_state
    (** State 039.
        Stack shape : expression unite.
        Start symbol: programme. *)

  | MenhirState040 : (((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 040.
        Stack shape : expression unite expression.
        Start symbol: programme. *)

  | MenhirState041 : ((((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_state
    (** State 041.
        Stack shape : expression unite expression unite.
        Start symbol: programme. *)

  | MenhirState042 : (((((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 042.
        Stack shape : expression unite expression unite expression.
        Start symbol: programme. *)

  | MenhirState046 : ('s _menhir_cell0_condition_energie, _menhir_box_programme) _menhir_state
    (** State 046.
        Stack shape : condition_energie.
        Start symbol: programme. *)

  | MenhirState048 : (('s, _menhir_box_programme) _menhir_cell1_TOUTES, _menhir_box_programme) _menhir_state
    (** State 048.
        Stack shape : TOUTES.
        Start symbol: programme. *)

  | MenhirState049 : ((('s, _menhir_box_programme) _menhir_cell1_TOUTES, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 049.
        Stack shape : TOUTES expression.
        Start symbol: programme. *)

  | MenhirState051 : (((('s, _menhir_box_programme) _menhir_cell1_TOUTES, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_state
    (** State 051.
        Stack shape : TOUTES expression unite.
        Start symbol: programme. *)

  | MenhirState054 : (('s, _menhir_box_programme) _menhir_cell1_SI, _menhir_box_programme) _menhir_state
    (** State 054.
        Stack shape : SI.
        Start symbol: programme. *)

  | MenhirState056 : (('s, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_state
    (** State 056.
        Stack shape : PAR_G.
        Start symbol: programme. *)

  | MenhirState058 : (('s, _menhir_box_programme) _menhir_cell1_NON, _menhir_box_programme) _menhir_state
    (** State 058.
        Stack shape : NON.
        Start symbol: programme. *)

  | MenhirState067 : (('s, _menhir_box_programme) _menhir_cell1_expression _menhir_cell0_verificateur, _menhir_box_programme) _menhir_state
    (** State 067.
        Stack shape : expression verificateur.
        Start symbol: programme. *)

  | MenhirState069 : ((('s, _menhir_box_programme) _menhir_cell1_NON, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_state
    (** State 069.
        Stack shape : NON booleen.
        Start symbol: programme. *)

  | MenhirState072 : (((('s, _menhir_box_programme) _menhir_cell1_NON, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_logique_operateur, _menhir_box_programme) _menhir_state
    (** State 072.
        Stack shape : NON booleen logique_operateur.
        Start symbol: programme. *)

  | MenhirState076 : ((('s, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_state
    (** State 076.
        Stack shape : PAR_G booleen.
        Start symbol: programme. *)

  | MenhirState077 : (((('s, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_logique_operateur, _menhir_box_programme) _menhir_state
    (** State 077.
        Stack shape : PAR_G booleen logique_operateur.
        Start symbol: programme. *)

  | MenhirState081 : ((('s, _menhir_box_programme) _menhir_cell1_SI, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_state
    (** State 081.
        Stack shape : SI booleen.
        Start symbol: programme. *)

  | MenhirState084 : (('s, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 084.
        Stack shape : POUR IDENT.
        Start symbol: programme. *)

  | MenhirState086 : ((('s, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 086.
        Stack shape : POUR IDENT expression.
        Start symbol: programme. *)

  | MenhirState088 : (((('s, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 088.
        Stack shape : POUR IDENT expression expression.
        Start symbol: programme. *)

  | MenhirState090 : (('s, _menhir_box_programme) _menhir_cell1_PAUSE, _menhir_box_programme) _menhir_state
    (** State 090.
        Stack shape : PAUSE.
        Start symbol: programme. *)

  | MenhirState091 : ((('s, _menhir_box_programme) _menhir_cell1_PAUSE, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 091.
        Stack shape : PAUSE expression.
        Start symbol: programme. *)

  | MenhirState103 : (('s, _menhir_box_programme) _menhir_cell1_ENVOYER, _menhir_box_programme) _menhir_state
    (** State 103.
        Stack shape : ENVOYER.
        Start symbol: programme. *)

  | MenhirState110 : (('s, _menhir_box_programme) _menhir_cell1_CONSTANTE, _menhir_box_programme) _menhir_state
    (** State 110.
        Stack shape : CONSTANTE.
        Start symbol: programme. *)

  | MenhirState113 : ((('s, _menhir_box_programme) _menhir_cell1_CONSTANTE, _menhir_box_programme) _menhir_cell1_type_var _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 113.
        Stack shape : CONSTANTE type_var IDENT.
        Start symbol: programme. *)

  | MenhirState119 : (('s, _menhir_box_programme) _menhir_cell1_CLIGNOTER _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 119.
        Stack shape : CLIGNOTER IDENT.
        Start symbol: programme. *)

  | MenhirState120 : ((('s, _menhir_box_programme) _menhir_cell1_CLIGNOTER _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 120.
        Stack shape : CLIGNOTER IDENT expression.
        Start symbol: programme. *)

  | MenhirState132 : (('s, _menhir_box_programme) _menhir_cell1_type_var _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 132.
        Stack shape : type_var IDENT.
        Start symbol: programme. *)

  | MenhirState137 : (('s, _menhir_box_programme) _menhir_cell1_type_transmission _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 137.
        Stack shape : type_transmission IDENT.
        Start symbol: programme. *)

  | MenhirState139 : ((('s, _menhir_box_programme) _menhir_cell1_type_transmission _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 139.
        Stack shape : type_transmission IDENT expression.
        Start symbol: programme. *)

  | MenhirState145 : (('s, _menhir_box_programme) _menhir_cell1_type_comp _menhir_cell0_IDENT, _menhir_box_programme) _menhir_state
    (** State 145.
        Stack shape : type_comp IDENT.
        Start symbol: programme. *)

  | MenhirState151 : (('s, _menhir_box_programme) _menhir_cell1_instruction, _menhir_box_programme) _menhir_state
    (** State 151.
        Stack shape : instruction.
        Start symbol: programme. *)

  | MenhirState162 : (((('s, _menhir_box_programme) _menhir_cell1_SI, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_list_instruction_, _menhir_box_programme) _menhir_state
    (** State 162.
        Stack shape : SI booleen list(instruction).
        Start symbol: programme. *)


and ('s, 'r) _menhir_cell1_booleen = 
  | MenhirCell1_booleen of 's * ('s, 'r) _menhir_state * (Ast.booleen)

and ('s, 'r) _menhir_cell1_calcul = 
  | MenhirCell1_calcul of 's * ('s, 'r) _menhir_state * (Ast.calcul)

and 's _menhir_cell0_calcul_operateur = 
  | MenhirCell0_calcul_operateur of 's * (Ast.calcul_operateur)

and 's _menhir_cell0_condition_energie = 
  | MenhirCell0_condition_energie of 's * (Ast.condition_energie)

and ('s, 'r) _menhir_cell1_expression = 
  | MenhirCell1_expression of 's * ('s, 'r) _menhir_state * (Ast.expression)

and ('s, 'r) _menhir_cell1_instruction = 
  | MenhirCell1_instruction of 's * ('s, 'r) _menhir_state * (Ast.instruction)

and ('s, 'r) _menhir_cell1_list_instruction_ = 
  | MenhirCell1_list_instruction_ of 's * ('s, 'r) _menhir_state * (Ast.instruction list)

and ('s, 'r) _menhir_cell1_logique_operateur = 
  | MenhirCell1_logique_operateur of 's * ('s, 'r) _menhir_state * (Ast.logique_operateur)

and ('s, 'r) _menhir_cell1_type_comp = 
  | MenhirCell1_type_comp of 's * ('s, 'r) _menhir_state * (Ast.type_comp)

and ('s, 'r) _menhir_cell1_type_transmission = 
  | MenhirCell1_type_transmission of 's * ('s, 'r) _menhir_state * (Ast.type_transmission)

and ('s, 'r) _menhir_cell1_type_var = 
  | MenhirCell1_type_var of 's * ('s, 'r) _menhir_state * (Ast.type_var)

and ('s, 'r) _menhir_cell1_unite = 
  | MenhirCell1_unite of 's * ('s, 'r) _menhir_state * (Ast.unite)

and 's _menhir_cell0_verificateur = 
  | MenhirCell0_verificateur of 's * (Ast.verificateur)

and ('s, 'r) _menhir_cell1_CLIGNOTER = 
  | MenhirCell1_CLIGNOTER of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CONSTANTE = 
  | MenhirCell1_CONSTANTE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ENVOYER = 
  | MenhirCell1_ENVOYER of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * 
# 18 "parser.mly"
       (string)
# 353 "parser.ml"


and ('s, 'r) _menhir_cell1_NON = 
  | MenhirCell1_NON of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PAR_G = 
  | MenhirCell1_PAR_G of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PAUSE = 
  | MenhirCell1_PAUSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_POUR = 
  | MenhirCell1_POUR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SI = 
  | MenhirCell1_SI of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TOUTES = 
  | MenhirCell1_TOUTES of 's * ('s, 'r) _menhir_state

and _menhir_box_programme = 
  | MenhirBox_programme of (Ast.programme) [@@unboxed]

let _menhir_action_01 =
  fun id ->
    (
# 59 "parser.mly"
      ( Allumer id )
# 382 "parser.ml"
     : (Ast.action))

let _menhir_action_02 =
  fun id valeur ->
    (
# 61 "parser.mly"
      ( Envoyer (valeur, id) )
# 390 "parser.ml"
     : (Ast.action))

let _menhir_action_03 =
  fun id ->
    (
# 63 "parser.mly"
      ( Eteindre id )
# 398 "parser.ml"
     : (Ast.action))

let _menhir_action_04 =
  fun e id u ->
    (
# 65 "parser.mly"
      ( Clignoter (id, e, u) )
# 406 "parser.ml"
     : (Ast.action))

let _menhir_action_05 =
  fun e u ->
    (
# 67 "parser.mly"
      ( Pause (e, u) )
# 414 "parser.ml"
     : (Ast.action))

let _menhir_action_06 =
  fun () ->
    (
# 138 "parser.mly"
          ( Vrai )
# 422 "parser.ml"
     : (Ast.booleen))

let _menhir_action_07 =
  fun () ->
    (
# 139 "parser.mly"
          ( Faux )
# 430 "parser.ml"
     : (Ast.booleen))

let _menhir_action_08 =
  fun e1 e2 v ->
    (
# 141 "parser.mly"
      ( Comparaison (e1, v, e2) )
# 438 "parser.ml"
     : (Ast.booleen))

let _menhir_action_09 =
  fun b1 b2 o ->
    (
# 143 "parser.mly"
      ( Logique (b1, o, b2) )
# 446 "parser.ml"
     : (Ast.booleen))

let _menhir_action_10 =
  fun b1 b2 o ->
    (
# 145 "parser.mly"
      ( Non (Logique (b1, o, b2)) )
# 454 "parser.ml"
     : (Ast.booleen))

let _menhir_action_11 =
  fun v ->
    (
# 125 "parser.mly"
                  ( Nombre v )
# 462 "parser.ml"
     : (Ast.calcul))

let _menhir_action_12 =
  fun v ->
    (
# 126 "parser.mly"
                  ( Flottant v )
# 470 "parser.ml"
     : (Ast.calcul))

let _menhir_action_13 =
  fun id ->
    (
# 127 "parser.mly"
                  ( Id id )
# 478 "parser.ml"
     : (Ast.calcul))

let _menhir_action_14 =
  fun o v1 v2 ->
    (
# 129 "parser.mly"
      ( Operation (v1, o, v2) )
# 486 "parser.ml"
     : (Ast.calcul))

let _menhir_action_15 =
  fun () ->
    (
# 132 "parser.mly"
            ( Addition )
# 494 "parser.ml"
     : (Ast.calcul_operateur))

let _menhir_action_16 =
  fun () ->
    (
# 133 "parser.mly"
            ( Soustraction )
# 502 "parser.ml"
     : (Ast.calcul_operateur))

let _menhir_action_17 =
  fun () ->
    (
# 134 "parser.mly"
            ( Multiplication )
# 510 "parser.ml"
     : (Ast.calcul_operateur))

let _menhir_action_18 =
  fun () ->
    (
# 135 "parser.mly"
            ( Division )
# 518 "parser.ml"
     : (Ast.calcul_operateur))

let _menhir_action_19 =
  fun e u1 u2 ->
    (
# 34 "parser.mly"
      ( Budget (e, u1, u2) )
# 526 "parser.ml"
     : (Ast.condition_energie))

let _menhir_action_20 =
  fun e1 e2 e3 u1 u2 u3 ->
    (
# 37 "parser.mly"
      ( Autonomie (e1, u1, e2, u2, e3, u3) )
# 534 "parser.ml"
     : (Ast.condition_energie))

let _menhir_action_21 =
  fun b l ->
    (
# 79 "parser.mly"
      ( Si (b, l, []) )
# 542 "parser.ml"
     : (Ast.conditionnel))

let _menhir_action_22 =
  fun b l1 l2 ->
    (
# 82 "parser.mly"
      ( Si (b, l1, l2) )
# 550 "parser.ml"
     : (Ast.conditionnel))

let _menhir_action_23 =
  fun d ->
    (
# 85 "parser.mly"
                           ( d )
# 558 "parser.ml"
     : (Ast.declaration))

let _menhir_action_24 =
  fun d ->
    (
# 86 "parser.mly"
                           ( d )
# 566 "parser.ml"
     : (Ast.declaration))

let _menhir_action_25 =
  fun d ->
    (
# 87 "parser.mly"
                           ( d )
# 574 "parser.ml"
     : (Ast.declaration))

let _menhir_action_26 =
  fun e id t ->
    (
# 97 "parser.mly"
      ( DeclComp (t, id, e) )
# 582 "parser.ml"
     : (Ast.declaration))

let _menhir_action_27 =
  fun e id t ->
    (
# 101 "parser.mly"
      ( DeclTransmission (t, id, [e]) )
# 590 "parser.ml"
     : (Ast.declaration))

let _menhir_action_28 =
  fun e1 e2 id t ->
    (
# 104 "parser.mly"
      ( DeclTransmission (t, id, [e1; e2]) )
# 598 "parser.ml"
     : (Ast.declaration))

let _menhir_action_29 =
  fun e id t ->
    (
# 91 "parser.mly"
      ( DeclVar (true, t, id, e) )
# 606 "parser.ml"
     : (Ast.declaration))

let _menhir_action_30 =
  fun e id t ->
    (
# 93 "parser.mly"
      ( DeclVar (false, t, id, e) )
# 614 "parser.ml"
     : (Ast.declaration))

let _menhir_action_31 =
  fun id ->
    (
# 120 "parser.mly"
                                    ( Lire id )
# 622 "parser.ml"
     : (Ast.expression))

let _menhir_action_32 =
  fun c ->
    (
# 121 "parser.mly"
                                    ( Calcul c )
# 630 "parser.ml"
     : (Ast.expression))

let _menhir_action_33 =
  fun t ->
    (
# 122 "parser.mly"
                                    ( Texte t )
# 638 "parser.ml"
     : (Ast.expression))

let _menhir_action_34 =
  fun a ->
    (
# 52 "parser.mly"
                      ( Action a )
# 646 "parser.ml"
     : (Ast.instruction))

let _menhir_action_35 =
  fun d ->
    (
# 53 "parser.mly"
                      ( Declaration d )
# 654 "parser.ml"
     : (Ast.instruction))

let _menhir_action_36 =
  fun i ->
    (
# 54 "parser.mly"
                      ( Iteration i )
# 662 "parser.ml"
     : (Ast.instruction))

let _menhir_action_37 =
  fun c ->
    (
# 55 "parser.mly"
                      ( Conditionnel c )
# 670 "parser.ml"
     : (Ast.instruction))

let _menhir_action_38 =
  fun d f id l ->
    (
# 72 "parser.mly"
      ( Pour (id, d, f, l) )
# 678 "parser.ml"
     : (Ast.iteration))

let _menhir_action_39 =
  fun e l u ->
    (
# 75 "parser.mly"
      ( Toutes (e, u, l) )
# 686 "parser.ml"
     : (Ast.iteration))

let _menhir_action_40 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 694 "parser.ml"
     : (Ast.instruction list))

let _menhir_action_41 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 702 "parser.ml"
     : (Ast.instruction list))

let _menhir_action_42 =
  fun () ->
    (
# 156 "parser.mly"
        ( Et )
# 710 "parser.ml"
     : (Ast.logique_operateur))

let _menhir_action_43 =
  fun () ->
    (
# 157 "parser.mly"
        ( Ou )
# 718 "parser.ml"
     : (Ast.logique_operateur))

let _menhir_action_44 =
  fun c l ->
    (
# 30 "parser.mly"
      ( (c, l) )
# 726 "parser.ml"
     : (Ast.programme))

let _menhir_action_45 =
  fun () ->
    (
# 112 "parser.mly"
                 ( Temperature )
# 734 "parser.ml"
     : (Ast.type_comp))

let _menhir_action_46 =
  fun () ->
    (
# 113 "parser.mly"
                 ( Led )
# 742 "parser.ml"
     : (Ast.type_comp))

let _menhir_action_47 =
  fun () ->
    (
# 116 "parser.mly"
               ( Wifi )
# 750 "parser.ml"
     : (Ast.type_transmission))

let _menhir_action_48 =
  fun () ->
    (
# 117 "parser.mly"
               ( Bluetooth )
# 758 "parser.ml"
     : (Ast.type_transmission))

let _menhir_action_49 =
  fun () ->
    (
# 107 "parser.mly"
              ( TypeEntier )
# 766 "parser.ml"
     : (Ast.type_var))

let _menhir_action_50 =
  fun () ->
    (
# 108 "parser.mly"
              ( TypeFlottant )
# 774 "parser.ml"
     : (Ast.type_var))

let _menhir_action_51 =
  fun () ->
    (
# 109 "parser.mly"
              ( TypeTexte )
# 782 "parser.ml"
     : (Ast.type_var))

let _menhir_action_52 =
  fun () ->
    (
# 40 "parser.mly"
            ( S )
# 790 "parser.ml"
     : (Ast.unite))

let _menhir_action_53 =
  fun () ->
    (
# 41 "parser.mly"
            ( Ms )
# 798 "parser.ml"
     : (Ast.unite))

let _menhir_action_54 =
  fun () ->
    (
# 42 "parser.mly"
            ( An )
# 806 "parser.ml"
     : (Ast.unite))

let _menhir_action_55 =
  fun () ->
    (
# 43 "parser.mly"
            ( MAh )
# 814 "parser.ml"
     : (Ast.unite))

let _menhir_action_56 =
  fun () ->
    (
# 44 "parser.mly"
            ( Ah )
# 822 "parser.ml"
     : (Ast.unite))

let _menhir_action_57 =
  fun () ->
    (
# 45 "parser.mly"
            ( V )
# 830 "parser.ml"
     : (Ast.unite))

let _menhir_action_58 =
  fun () ->
    (
# 46 "parser.mly"
            ( MV )
# 838 "parser.ml"
     : (Ast.unite))

let _menhir_action_59 =
  fun () ->
    (
# 47 "parser.mly"
            ( MJ )
# 846 "parser.ml"
     : (Ast.unite))

let _menhir_action_60 =
  fun () ->
    (
# 48 "parser.mly"
            ( J )
# 854 "parser.ml"
     : (Ast.unite))

let _menhir_action_61 =
  fun () ->
    (
# 49 "parser.mly"
            ( Cycle )
# 862 "parser.ml"
     : (Ast.unite))

let _menhir_action_62 =
  fun () ->
    (
# 148 "parser.mly"
               ( Egal )
# 870 "parser.ml"
     : (Ast.verificateur))

let _menhir_action_63 =
  fun () ->
    (
# 149 "parser.mly"
               ( Sup )
# 878 "parser.ml"
     : (Ast.verificateur))

let _menhir_action_64 =
  fun () ->
    (
# 150 "parser.mly"
               ( SupEgal )
# 886 "parser.ml"
     : (Ast.verificateur))

let _menhir_action_65 =
  fun () ->
    (
# 151 "parser.mly"
               ( Inf )
# 894 "parser.ml"
     : (Ast.verificateur))

let _menhir_action_66 =
  fun () ->
    (
# 152 "parser.mly"
               ( InfEgal )
# 902 "parser.ml"
     : (Ast.verificateur))

let _menhir_action_67 =
  fun () ->
    (
# 153 "parser.mly"
               ( Different )
# 910 "parser.ml"
     : (Ast.verificateur))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | WIFI ->
        "WIFI"
    | VRAI ->
        "VRAI"
    | VIRGULE ->
        "VIRGULE"
    | U_V ->
        "U_V"
    | U_S ->
        "U_S"
    | U_MV ->
        "U_MV"
    | U_MS ->
        "U_MS"
    | U_MJ ->
        "U_MJ"
    | U_MAH ->
        "U_MAH"
    | U_J ->
        "U_J"
    | U_CYCLE ->
        "U_CYCLE"
    | U_AN ->
        "U_AN"
    | U_AH ->
        "U_AH"
    | TOUTES ->
        "TOUTES"
    | TEXTE ->
        "TEXTE"
    | TEMPERATURE ->
        "TEMPERATURE"
    | SUP_EGAL ->
        "SUP_EGAL"
    | SUP ->
        "SUP"
    | SINON ->
        "SINON"
    | SI ->
        "SI"
    | POUR ->
        "POUR"
    | POINT_VIRGULE ->
        "POINT_VIRGULE"
    | PLUS ->
        "PLUS"
    | PAUSE ->
        "PAUSE"
    | PAR_G ->
        "PAR_G"
    | PAR_D ->
        "PAR_D"
    | PAR ->
        "PAR"
    | OU ->
        "OU"
    | NON ->
        "NON"
    | NOMBRE _ ->
        "NOMBRE"
    | MOINS ->
        "MOINS"
    | LIRE ->
        "LIRE"
    | LED ->
        "LED"
    | INF_EGAL ->
        "INF_EGAL"
    | INF ->
        "INF"
    | IDENT _ ->
        "IDENT"
    | FOIS ->
        "FOIS"
    | FLOTTANT ->
        "FLOTTANT"
    | FIN ->
        "FIN"
    | FAUX ->
        "FAUX"
    | ETEINDRE ->
        "ETEINDRE"
    | ET ->
        "ET"
    | ENVOYER ->
        "ENVOYER"
    | ENTIER ->
        "ENTIER"
    | EGAL_EGAL ->
        "EGAL_EGAL"
    | EGAL ->
        "EGAL"
    | DIVISE ->
        "DIVISE"
    | DIFFERENT ->
        "DIFFERENT"
    | DEUX_POINTS ->
        "DEUX_POINTS"
    | DECIMAL _ ->
        "DECIMAL"
    | CONSTANTE ->
        "CONSTANTE"
    | CLIGNOTER ->
        "CLIGNOTER"
    | CHAINE _ ->
        "CHAINE"
    | BUDGET ->
        "BUDGET"
    | BLUETOOTH ->
        "BLUETOOTH"
    | BATTERIE ->
        "BATTERIE"
    | AUTONOMIE ->
        "AUTONOMIE"
    | ALLUMER ->
        "ALLUMER"
    | ACCOLADE_G ->
        "ACCOLADE_G"
    | ACCOLADE_D ->
        "ACCOLADE_D"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_167 : type  ttv_stack. ttv_stack _menhir_cell0_condition_energie -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | FIN ->
          let MenhirCell0_condition_energie (_menhir_stack, c) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_44 c l in
          MenhirBox_programme _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_002 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PAR_G (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState002 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOMBRE _v ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENT _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let v = _v in
      let _v = _menhir_action_11 v in
      _menhir_goto_calcul _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_calcul : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState002 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState001 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_006 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_calcul (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOINS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer
      | FOIS ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVISE ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_15 () in
      _menhir_goto_calcul_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_calcul_operateur : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_calcul_operateur (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
      | NOMBRE _v_0 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState011
      | IDENT _v_1 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState011
      | DECIMAL _v_2 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState011
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_13 id in
      _menhir_goto_calcul _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let v = _v in
      let _v = _menhir_action_12 v in
      _menhir_goto_calcul _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_008 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_16 () in
      _menhir_goto_calcul_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_009 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_17 () in
      _menhir_goto_calcul_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_010 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_18 () in
      _menhir_goto_calcul_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_012 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_calcul _menhir_cell0_calcul_operateur -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | PAR_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_calcul_operateur (_menhir_stack, o) = _menhir_stack in
          let MenhirCell1_calcul (_menhir_stack, _, v1) = _menhir_stack in
          let MenhirCell1_PAR_G (_menhir_stack, _menhir_s) = _menhir_stack in
          let v2 = _v in
          let _v = _menhir_action_14 o v1 v2 in
          _menhir_goto_calcul _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let c = _v in
      let _v = _menhir_action_32 c in
      _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState001 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState113 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState145 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_57 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_unite : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState019 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_030 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unite (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _menhir_s = MenhirState031 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | U_V ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_S ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MV ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MS ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MJ ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MAH ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_J ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_CYCLE ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_AN ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_AH ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_52 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_58 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_53 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_59 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_55 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_60 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_61 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_54 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_56 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_032 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_unite (_menhir_stack, _, u1) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, e) = _menhir_stack in
          let u2 = _v in
          let _v = _menhir_action_19 e u1 u2 in
          _menhir_goto_condition_energie _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_condition_energie : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_condition_energie (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | WIFI ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TOUTES ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TEXTE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TEMPERATURE ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | SI ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | POUR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | PAUSE ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LED ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FLOTTANT ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ETEINDRE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ENVOYER ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ENTIER ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | CONSTANTE ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | CLIGNOTER ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BLUETOOTH ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | ALLUMER ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FIN ->
          let _v_0 = _menhir_action_40 () in
          _menhir_run_167 _menhir_stack _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_47 () in
      _menhir_goto_type_transmission _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_transmission : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_transmission (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DEUX_POINTS ->
              let _menhir_s = MenhirState137 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_D ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let id = _v in
                  let _v = _menhir_action_31 id in
                  _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let t = _v in
      let _v = _menhir_action_33 t in
      _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_048 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TOUTES (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState048 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOMBRE _v ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAINE _v ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_51 () in
      _menhir_goto_type_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState151 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_CONSTANTE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EGAL ->
              let _menhir_s = MenhirState113 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_130 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EGAL ->
              let _menhir_s = MenhirState132 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_45 () in
      _menhir_goto_type_comp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type_comp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_comp (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DEUX_POINTS ->
              let _menhir_s = MenhirState145 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SI (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VRAI ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PAR_G ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NON ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOMBRE _v ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FAUX ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DECIMAL _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAINE _v ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_booleen _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_booleen : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState058 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState056 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState054 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_NON as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_booleen (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OU ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_43 () in
      _menhir_goto_logique_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_logique_operateur : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState069 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_072 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_NON, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_logique_operateur (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VRAI ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | PAR_G ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | NON ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | NOMBRE _v_0 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState072
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | IDENT _v_1 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState072
      | FAUX ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | DECIMAL _v_2 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState072
      | CHAINE _v_3 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState072
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PAR_G (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VRAI ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PAR_G ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NON ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOMBRE _v ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FAUX ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DECIMAL _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAINE _v ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NON (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _menhir_s = MenhirState058 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VRAI ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PAR_G ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NON ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FAUX ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_07 () in
      _menhir_goto_booleen _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_logique_operateur (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VRAI ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | PAR_G ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | NON ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | NOMBRE _v_0 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState077
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | IDENT _v_1 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState077
      | FAUX ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | DECIMAL _v_2 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState077
      | CHAINE _v_3 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState077
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_42 () in
      _menhir_goto_logique_operateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_073 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_NON, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_logique_operateur -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | PAR_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_logique_operateur (_menhir_stack, _, o) = _menhir_stack in
          let MenhirCell1_booleen (_menhir_stack, _, b1) = _menhir_stack in
          let MenhirCell1_NON (_menhir_stack, _menhir_s) = _menhir_stack in
          let b2 = _v in
          let _v = _menhir_action_10 b1 b2 o in
          _menhir_goto_booleen _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_booleen (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | OU ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ET ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_logique_operateur -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | PAR_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_logique_operateur (_menhir_stack, _, o) = _menhir_stack in
          let MenhirCell1_booleen (_menhir_stack, _, b1) = _menhir_stack in
          let MenhirCell1_PAR_G (_menhir_stack, _menhir_s) = _menhir_stack in
          let b2 = _v in
          let _v = _menhir_action_09 b1 b2 o in
          _menhir_goto_booleen _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_SI as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_booleen (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIFI ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | TOUTES ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | TEXTE ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | TEMPERATURE ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | SI ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | POUR ->
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | PAUSE ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | LED ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | FLOTTANT ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | ETEINDRE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | ENVOYER ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | ENTIER ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | CONSTANTE ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | CLIGNOTER ->
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | BLUETOOTH ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | ALLUMER ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
          | ACCOLADE_D ->
              let _v_0 = _menhir_action_40 () in
              _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState081 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_POUR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DEUX_POINTS ->
              let _menhir_s = MenhirState084 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PAUSE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _menhir_s = MenhirState090 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_46 () in
      _menhir_goto_type_comp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_50 () in
      _menhir_goto_type_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_D ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | POINT_VIRGULE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let id = _v in
                      let _v = _menhir_action_03 id in
                      _menhir_goto_action _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_action : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let a = _v in
      let _v = _menhir_action_34 a in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_instruction : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_instruction (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WIFI ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | TOUTES ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | TEXTE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | TEMPERATURE ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | SI ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | POUR ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | PAUSE ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LED ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | FLOTTANT ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | ETEINDRE ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | ENVOYER ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | ENTIER ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | CONSTANTE ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | CLIGNOTER ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | BLUETOOTH ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | ALLUMER ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | ACCOLADE_D | FIN ->
          let _v_0 = _menhir_action_40 () in
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ENVOYER (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _menhir_s = MenhirState103 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_49 () in
      _menhir_goto_type_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_110 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CONSTANTE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState110 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEXTE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FLOTTANT ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ENTIER ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CLIGNOTER (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VIRGULE ->
                  let _menhir_s = MenhirState119 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | PAR_G ->
                      _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | NOMBRE _v ->
                      _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | LIRE ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | DECIMAL _v ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | CHAINE _v ->
                      _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_48 () in
      _menhir_goto_type_transmission _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_125 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_D ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | POINT_VIRGULE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let id = _v in
                      let _v = _menhir_action_01 id in
                      _menhir_goto_action _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_152 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_instruction (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_41 x xs in
      _menhir_goto_list_instruction_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_instruction_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState088 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState151 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState051 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState046 ->
          _menhir_run_167 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_148 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expression (_menhir_stack, _, f) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, d) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_POUR (_menhir_stack, _menhir_s) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_38 d f id l in
          _menhir_goto_iteration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_iteration : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let i = _v in
      let _v = _menhir_action_36 i in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_159 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_SI, _menhir_box_programme) _menhir_cell1_booleen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SINON ->
              let _menhir_stack = MenhirCell1_list_instruction_ (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ACCOLADE_G ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | WIFI ->
                      _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | TOUTES ->
                      _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | TEXTE ->
                      _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | TEMPERATURE ->
                      _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | SI ->
                      _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | POUR ->
                      _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | PAUSE ->
                      _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | LED ->
                      _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | FLOTTANT ->
                      _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | ETEINDRE ->
                      _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | ENVOYER ->
                      _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | ENTIER ->
                      _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | CONSTANTE ->
                      _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | CLIGNOTER ->
                      _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | BLUETOOTH ->
                      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | ALLUMER ->
                      _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | ACCOLADE_D ->
                      let _v_0 = _menhir_action_40 () in
                      _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | ACCOLADE_D | ALLUMER | BLUETOOTH | CLIGNOTER | CONSTANTE | ENTIER | ENVOYER | ETEINDRE | FIN | FLOTTANT | LED | PAUSE | POUR | SI | TEMPERATURE | TEXTE | TOUTES | WIFI ->
              let MenhirCell1_booleen (_menhir_stack, _, b) = _menhir_stack in
              let MenhirCell1_SI (_menhir_stack, _menhir_s) = _menhir_stack in
              let l = _v in
              let _v = _menhir_action_21 b l in
              _menhir_goto_conditionnel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_163 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_SI, _menhir_box_programme) _menhir_cell1_booleen, _menhir_box_programme) _menhir_cell1_list_instruction_ -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_list_instruction_ (_menhir_stack, _, l1) = _menhir_stack in
          let MenhirCell1_booleen (_menhir_stack, _, b) = _menhir_stack in
          let MenhirCell1_SI (_menhir_stack, _menhir_s) = _menhir_stack in
          let l2 = _v in
          let _v = _menhir_action_22 b l1 l2 in
          _menhir_goto_conditionnel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_conditionnel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let c = _v in
      let _v = _menhir_action_37 c in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_165 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_TOUTES, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_unite (_menhir_stack, _, u) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_TOUTES (_menhir_stack, _menhir_s) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_39 e l u in
          _menhir_goto_iteration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unite (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | BATTERIE ->
              let _menhir_s = MenhirState039 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_G ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOMBRE _v ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LIRE ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | CHAINE _v ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ((((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unite (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | NOMBRE _v_0 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState041
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | IDENT _v_1 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState041
      | DECIMAL _v_2 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState041
      | CHAINE _v_3 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState041
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (((((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expression (_menhir_stack, _, e3) = _menhir_stack in
          let MenhirCell1_unite (_menhir_stack, _, u2) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_unite (_menhir_stack, _, u1) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, e1) = _menhir_stack in
          let u3 = _v in
          let _v = _menhir_action_20 e1 e2 e3 u1 u2 u3 in
          _menhir_goto_condition_energie _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_TOUTES, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unite (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIFI ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | TOUTES ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | TEXTE ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | TEMPERATURE ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | SI ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | POUR ->
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | PAUSE ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | LED ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | FLOTTANT ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | ETEINDRE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | ENVOYER ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | ENTIER ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | CONSTANTE ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | CLIGNOTER ->
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | BLUETOOTH ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | ALLUMER ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
          | ACCOLADE_D ->
              let _v_0 = _menhir_action_40 () in
              _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAUSE, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | PAR_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | POINT_VIRGULE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_expression (_menhir_stack, _, e) = _menhir_stack in
              let MenhirCell1_PAUSE (_menhir_stack, _menhir_s) = _menhir_stack in
              let u = _v in
              let _v = _menhir_action_05 e u in
              _menhir_goto_action _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_CLIGNOTER _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | PAR_D ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | POINT_VIRGULE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_expression (_menhir_stack, _, e) = _menhir_stack in
              let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
              let MenhirCell1_CLIGNOTER (_menhir_stack, _menhir_s) = _menhir_stack in
              let u = _v in
              let _v = _menhir_action_04 e id u in
              _menhir_goto_action _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (((((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_TOUTES as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUP_EGAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_64 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | SUP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | INF_EGAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_66 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | INF ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_65 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | EGAL_EGAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | DIFFERENT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_67 () in
          _menhir_goto_verificateur _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_verificateur : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_verificateur (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | NOMBRE _v_0 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState067
      | LIRE ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | IDENT _v_1 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState067
      | DECIMAL _v_2 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState067
      | CHAINE _v_3 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState067
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_expression _menhir_cell0_verificateur -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_verificateur (_menhir_stack, v) = _menhir_stack in
      let MenhirCell1_expression (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_08 e1 e2 v in
      _menhir_goto_booleen _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_085 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DEUX_POINTS ->
          let _menhir_s = MenhirState086 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. (((ttv_stack, _menhir_box_programme) _menhir_cell1_POUR _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ACCOLADE_G ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WIFI ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | TOUTES ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | TEXTE ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | TEMPERATURE ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | SI ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | POUR ->
              _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | PAUSE ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | LED ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | FLOTTANT ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | ETEINDRE ->
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | ENVOYER ->
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | ENTIER ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | CONSTANTE ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | CLIGNOTER ->
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | BLUETOOTH ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | ALLUMER ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
          | ACCOLADE_D ->
              let _v_0 = _menhir_action_40 () in
              _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAUSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_ENVOYER -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | PAR_D ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | POINT_VIRGULE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let MenhirCell1_ENVOYER (_menhir_stack, _menhir_s) = _menhir_stack in
                      let (id, valeur) = (_v_0, _v) in
                      let _v = _menhir_action_02 id valeur in
                      _menhir_goto_action _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_CONSTANTE, _menhir_box_programme) _menhir_cell1_type_var _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_type_var (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_CONSTANTE (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_29 e id t in
          _menhir_goto_declaration_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_declaration_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let d = _v in
      let _v = _menhir_action_23 d in
      _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_declaration : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let d = _v in
      let _v = _menhir_action_35 d in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_120 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_CLIGNOTER _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_S ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_MV ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_MS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_MJ ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_MAH ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_J ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_CYCLE ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_AN ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | U_AH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_type_var _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_type_var (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_30 e id t in
          _menhir_goto_declaration_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_type_transmission _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VIRGULE ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState139 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_type_transmission (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_27 e id t in
          _menhir_goto_declaration_trans _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_declaration_trans : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let d = _v in
      let _v = _menhir_action_25 d in
      _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_140 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_type_transmission _menhir_cell0_IDENT, _menhir_box_programme) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expression (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_type_transmission (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 id t in
          _menhir_goto_declaration_trans _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_type_comp _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
          let MenhirCell1_type_comp (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_26 e id t in
          let d = _v in
          let _v = _menhir_action_24 d in
          _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_PAR_G as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUS ->
          let _menhir_stack = MenhirCell1_calcul (_menhir_stack, _menhir_s, _v) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOINS ->
          let _menhir_stack = MenhirCell1_calcul (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer
      | FOIS ->
          let _menhir_stack = MenhirCell1_calcul (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVISE ->
          let _menhir_stack = MenhirCell1_calcul (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIFFERENT | EGAL_EGAL | INF | INF_EGAL | SUP | SUP_EGAL ->
          let c = _v in
          let _v = _menhir_action_32 c in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | BUDGET ->
          let _menhir_s = MenhirState001 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | AUTONOMIE ->
          let _menhir_s = MenhirState035 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAR_G ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOMBRE _v ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAINE _v ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
end

let programme =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_programme v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
