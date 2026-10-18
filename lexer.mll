{ 
  open Parser
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
  | "s"     { U_S }
  | "ms"    { U_MS }
  | "an"    { U_AN }
  | "mAh"   { U_MAH }
  | "Ah"    { U_AH }
  | "V"     { U_V }
  | "mV"    { U_MV }
  | "mJ"    { U_MJ }
  | "J"     { U_J }
  | "cycle" { U_CYCLE }
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