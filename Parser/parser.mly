%{
  open Ast
%}

%token SI SINON POUR TOUTES LIRE
%token ALLUMER ENVOYER ETEINDRE CLIGNOTER PAUSE
%token ENTIER FLOTTANT TEXTE
%token TEMPERATURE LED WIFI BLUETOOTH CONSTANTE
%token BUDGET AUTONOMIE BATTERIE PAR
%token VRAI FAUX NON
%token U_S U_MS U_AN U_MAH U_AH U_V U_MV U_MJ U_J U_CYCLE
%token EGAL EGAL_EGAL DIFFERENT
%token SUP SUP_EGAL INF INF_EGAL
%token ET OU
%token PLUS MOINS FOIS DIVISE
%token PAR_G PAR_D ACCOLADE_G ACCOLADE_D
%token POINT_VIRGULE DEUX_POINTS VIRGULE
%token <string> IDENT
%token <int> NOMBRE
%token <float> DECIMAL
%token <string> CHAINE
%token FIN

%start <Ast.programme> programme

%%

programme:
  | c = condition_energie; l = list(instruction); FIN
      { (c, l) }

condition_energie:
  | BUDGET; e = expression; u1 = unite; PAR; u2 = unite; POINT_VIRGULE
      { Budget (e, u1, u2) }

unite:
  | U_S     { S }
  | U_MS    { Ms }
  | U_AN    { An }
  | U_MAH   { MAh }
  | U_AH    { Ah }
  | U_V     { V }
  | U_MV    { MV }
  | U_MJ    { MJ }
  | U_J     { J }
  | U_CYCLE { Cycle }

instruction:
  | a = action  { Action a }

calcul:
  | v = NOMBRE  { Nombre v }

expression:
  | LIRE; PAR_G; id = IDENT; PAR_D  { Lire id }
  | c = calcul                      { Calcul c }

action:
  | ALLUMER; PAR_G; id = IDENT; PAR_D; POINT_VIRGULE
      { Allumer id }
  | ENVOYER; PAR_G; valeur = expression; VIRGULE; id = IDENT; PAR_D; POINT_VIRGULE
      { Envoyer (valeur, id) }
  | ETEINDRE; PAR_G; id = IDENT; PAR_D; POINT_VIRGULE
      { Eteindre id }