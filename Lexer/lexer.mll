{ 
  type jeton =
    | SI | SINON | POUR | TOUTES | LIRE
    | ALLUMER | ENVOYER | ETEINDRE | CLIGNOTER | PAUSE
    | ENTIER | FLOTTANT | TEXTE
    | TEMPERATURE | LED | WIFI | BLUETOOTH | CONSTANTE
    | BUDGET | AUTONOMIE | BATTERIE | PAR
    | VRAI | FAUX | NON
    | S | MS | AN | MAH | AH | V | MV | MJ | J | CYCLE
    | EGAL | EGAL_EGAL | DIFFERENT
    | SUP | SUP_EGAL | INF | INF_EGAL
    | ET | OU
    | PLUS | MOINS | FOIS | DIVISE
    | PAR_G | PAR_D | ACCOLADE_G | ACCOLADE_D
    | POINT_VIRGULE | DEUX_POINTS | VIRGULE
    | IDENT of string
    | NOMBRE of int
    | DECIMAL of float
    | CHAINE of string
    | FIN
}

rule next_token = parse
  | [' ' '\t' '\n' '\r']  { next_token lexbuf }
  | '#' [^ '\n']*         { next_token lexbuf }
  | "si"           { SI }
  | "sinon"        { SINON }
  | "pour"         { POUR }
  | "toutes"       { TOUTES }
  | "lire"         { LIRE }
  | "allumer"      { ALLUMER }
  | "envoyer"      { ENVOYER }
  | "eteindre"     { ETEINDRE }
  | "clignoter"    { CLIGNOTER }
  | "pause"        { PAUSE }
  | "entier"       { ENTIER }
  | "flottant"     { FLOTTANT }
  | "texte"        { TEXTE }
  | "temperature"  { TEMPERATURE }
  | "led"          { LED }
  | "wifi"         { WIFI }
  | "bluetooth"    { BLUETOOTH }
  | "constante"    { CONSTANTE }
  | "budget"       { BUDGET }
  | "autonomie"    { AUTONOMIE }
  | "batterie"     { BATTERIE }
  | "par"          { PAR }
  | "vrai"         { VRAI }
  | "faux"         { FAUX }
  | "non"          { NON }
  | "s"     { S }
  | "ms"    { MS }
  | "an"    { AN }
  | "mAh"   { MAH }
  | "Ah"    { AH }
  | "V"     { V }
  | "mV"    { MV }
  | "mJ"    { MJ }
  | "J"     { J }
  | "cycle" { CYCLE }
  | "=="  { EGAL_EGAL }
  | "="   { EGAL }
  | "!="  { DIFFERENT }
  | ">="  { SUP_EGAL }
  | ">"   { SUP }
  | "<="  { INF_EGAL }
  | "<"   { INF }
  | "&&"  { ET }
  | "||"  { OU }
  | "+"   { PLUS }
  | "-"   { MOINS }
  | "*"   { FOIS }
  | "/"   { DIVISE }
  | "("   { PAR_G }
  | ")"   { PAR_D }
  | "{"   { ACCOLADE_G }
  | "}"   { ACCOLADE_D }
  | ";"   { POINT_VIRGULE }
  | ":"   { DEUX_POINTS }
  | ","   { VIRGULE }
  | ['0'-'9']+ '.' ['0'-'9']+ as f  { DECIMAL (float_of_string f) }
  | ['0'-'9']+ as n                 { NOMBRE (int_of_string n) }
  | '"' ([^ '"']* as t) '"'        { CHAINE t }
  | ['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9' '_']* as nom  { IDENT nom }
  | eof  { FIN }
  | _ as c  { failwith "caractère non attendu" }