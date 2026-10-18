
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
  | MenhirState01 : ('s, _menhir_box_programme) _menhir_state
    (** State 01.
        Stack shape : <empty>.
        Start symbol: programme. *)

  | MenhirState07 : (('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_state
    (** State 07.
        Stack shape : expression.
        Start symbol: programme. *)

  | MenhirState19 : ((('s, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite, _menhir_box_programme) _menhir_state
    (** State 19.
        Stack shape : expression unite.
        Start symbol: programme. *)

  | MenhirState24 : ('s _menhir_cell0_condition_energie, _menhir_box_programme) _menhir_state
    (** State 24.
        Stack shape : condition_energie.
        Start symbol: programme. *)

  | MenhirState31 : (('s, _menhir_box_programme) _menhir_cell1_ENVOYER, _menhir_box_programme) _menhir_state
    (** State 31.
        Stack shape : ENVOYER.
        Start symbol: programme. *)

  | MenhirState44 : (('s, _menhir_box_programme) _menhir_cell1_instruction, _menhir_box_programme) _menhir_state
    (** State 44.
        Stack shape : instruction.
        Start symbol: programme. *)


and 's _menhir_cell0_condition_energie = 
  | MenhirCell0_condition_energie of 's * (Ast.condition_energie)

and ('s, 'r) _menhir_cell1_expression = 
  | MenhirCell1_expression of 's * ('s, 'r) _menhir_state * (Ast.expression)

and ('s, 'r) _menhir_cell1_instruction = 
  | MenhirCell1_instruction of 's * ('s, 'r) _menhir_state * (Ast.instruction)

and ('s, 'r) _menhir_cell1_unite = 
  | MenhirCell1_unite of 's * ('s, 'r) _menhir_state * (Ast.unite)

and ('s, 'r) _menhir_cell1_ENVOYER = 
  | MenhirCell1_ENVOYER of 's * ('s, 'r) _menhir_state

and _menhir_box_programme = 
  | MenhirBox_programme of (Ast.programme) [@@unboxed]

let _menhir_action_01 =
  fun id ->
    (
# 60 "parser.mly"
      ( Allumer id )
# 154 "parser.ml"
     : (Ast.action))

let _menhir_action_02 =
  fun id valeur ->
    (
# 62 "parser.mly"
      ( Envoyer (valeur, id) )
# 162 "parser.ml"
     : (Ast.action))

let _menhir_action_03 =
  fun id ->
    (
# 64 "parser.mly"
      ( Eteindre id )
# 170 "parser.ml"
     : (Ast.action))

let _menhir_action_04 =
  fun v ->
    (
# 52 "parser.mly"
                ( Nombre v )
# 178 "parser.ml"
     : (Ast.calcul))

let _menhir_action_05 =
  fun e u1 u2 ->
    (
# 34 "parser.mly"
      ( Budget (e, u1, u2) )
# 186 "parser.ml"
     : (Ast.condition_energie))

let _menhir_action_06 =
  fun id ->
    (
# 55 "parser.mly"
                                    ( Lire id )
# 194 "parser.ml"
     : (Ast.expression))

let _menhir_action_07 =
  fun c ->
    (
# 56 "parser.mly"
                                    ( Calcul c )
# 202 "parser.ml"
     : (Ast.expression))

let _menhir_action_08 =
  fun a ->
    (
# 49 "parser.mly"
                ( Action a )
# 210 "parser.ml"
     : (Ast.instruction))

let _menhir_action_09 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 218 "parser.ml"
     : (Ast.instruction list))

let _menhir_action_10 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 226 "parser.ml"
     : (Ast.instruction list))

let _menhir_action_11 =
  fun c l ->
    (
# 30 "parser.mly"
      ( (c, l) )
# 234 "parser.ml"
     : (Ast.programme))

let _menhir_action_12 =
  fun () ->
    (
# 37 "parser.mly"
            ( S )
# 242 "parser.ml"
     : (Ast.unite))

let _menhir_action_13 =
  fun () ->
    (
# 38 "parser.mly"
            ( Ms )
# 250 "parser.ml"
     : (Ast.unite))

let _menhir_action_14 =
  fun () ->
    (
# 39 "parser.mly"
            ( An )
# 258 "parser.ml"
     : (Ast.unite))

let _menhir_action_15 =
  fun () ->
    (
# 40 "parser.mly"
            ( MAh )
# 266 "parser.ml"
     : (Ast.unite))

let _menhir_action_16 =
  fun () ->
    (
# 41 "parser.mly"
            ( Ah )
# 274 "parser.ml"
     : (Ast.unite))

let _menhir_action_17 =
  fun () ->
    (
# 42 "parser.mly"
            ( V )
# 282 "parser.ml"
     : (Ast.unite))

let _menhir_action_18 =
  fun () ->
    (
# 43 "parser.mly"
            ( MV )
# 290 "parser.ml"
     : (Ast.unite))

let _menhir_action_19 =
  fun () ->
    (
# 44 "parser.mly"
            ( MJ )
# 298 "parser.ml"
     : (Ast.unite))

let _menhir_action_20 =
  fun () ->
    (
# 45 "parser.mly"
            ( J )
# 306 "parser.ml"
     : (Ast.unite))

let _menhir_action_21 =
  fun () ->
    (
# 46 "parser.mly"
            ( Cycle )
# 314 "parser.ml"
     : (Ast.unite))

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
  
  let _menhir_run_42 : type  ttv_stack. ttv_stack _menhir_cell0_condition_energie -> _ -> _menhir_box_programme =
    fun _menhir_stack _v ->
      let MenhirCell0_condition_energie (_menhir_stack, c) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_11 c l in
      MenhirBox_programme _v
  
  let rec _menhir_run_45 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_instruction -> _ -> _menhir_box_programme =
    fun _menhir_stack _v ->
      let MenhirCell1_instruction (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_10 x xs in
      _menhir_goto_list_instruction_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_instruction_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState24 ->
          _menhir_run_42 _menhir_stack _v
      | MenhirState44 ->
          _menhir_run_45 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let v = _v in
      let _v = _menhir_action_04 v in
      let c = _v in
      let _v = _menhir_action_07 c in
      _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState01 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState31 ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | U_V ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_S ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_MV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_MS ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_MJ ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_MAH ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_J ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_CYCLE ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_AN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | U_AH ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState07
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_17 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_unite : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState07 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_18 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_programme) _menhir_state -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_unite (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _menhir_s = MenhirState19 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | U_V ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_S ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MS ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MJ ->
              _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_MAH ->
              _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_J ->
              _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_CYCLE ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_AN ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | U_AH ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_18 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_11 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_13 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_12 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_19 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_13 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_15 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_14 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_20 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_15 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_21 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_14 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_17 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_16 () in
      _menhir_goto_unite _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_20 : type  ttv_stack. ((ttv_stack, _menhir_box_programme) _menhir_cell1_expression, _menhir_box_programme) _menhir_cell1_unite -> _ -> _ -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | POINT_VIRGULE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_unite (_menhir_stack, _, u1) = _menhir_stack in
          let MenhirCell1_expression (_menhir_stack, _, e) = _menhir_stack in
          let u2 = _v in
          let _v = _menhir_action_05 e u1 u2 in
          let _menhir_stack = MenhirCell0_condition_energie (_menhir_stack, _v) in
          (match (_tok : MenhirBasics.token) with
          | ETEINDRE ->
              _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
          | ENVOYER ->
              _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
          | ALLUMER ->
              _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState24
          | FIN ->
              let _v_0 = _menhir_action_09 () in
              _menhir_run_42 _menhir_stack _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
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
      let _v = _menhir_action_08 a in
      let _menhir_stack = MenhirCell1_instruction (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ETEINDRE ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | ENVOYER ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | ALLUMER ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | FIN ->
          let _v_0 = _menhir_action_09 () in
          _menhir_run_45 _menhir_stack _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_30 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ENVOYER (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR_G ->
          let _menhir_s = MenhirState31 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOMBRE _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
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
                  let _v = _menhir_action_06 id in
                  _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_37 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_programme) _menhir_state -> _menhir_box_programme =
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
  
  and _menhir_run_32 : type  ttv_stack. (ttv_stack, _menhir_box_programme) _menhir_cell1_ENVOYER -> _ -> _ -> _ -> _ -> _menhir_box_programme =
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
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_programme =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | BUDGET ->
          let _menhir_s = MenhirState01 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NOMBRE _v ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIRE ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
end

let programme =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_programme v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
