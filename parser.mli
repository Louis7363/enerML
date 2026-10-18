
(* The type of tokens. *)

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
  | NOMBRE of (int)
  | MOINS
  | LIRE
  | LED
  | INF_EGAL
  | INF
  | IDENT of (string)
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
  | DECIMAL of (float)
  | CONSTANTE
  | CLIGNOTER
  | CHAINE of (string)
  | BUDGET
  | BLUETOOTH
  | BATTERIE
  | AUTONOMIE
  | ALLUMER
  | ACCOLADE_G
  | ACCOLADE_D

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programme: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programme)
