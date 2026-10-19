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
  | AUTONOMIE; e1 = expression; u1 = unite; VIRGULE;
    BATTERIE; e2 = expression; u2 = unite; e3 = expression; u3 = unite; POINT_VIRGULE
      { Autonomie (e1, u1, e2, u2, e3, u3) }

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
  | a = action        { Action a }
  | d = declaration   { Declaration d }
  | i = iteration     { Iteration i }
  | c = conditionnel  { Conditionnel c }

action:
  | ALLUMER; PAR_G; id = IDENT; PAR_D; POINT_VIRGULE
      { Allumer id }
  | ENVOYER; PAR_G; valeur = expression; VIRGULE; id = IDENT; PAR_D; POINT_VIRGULE
      { Envoyer (valeur, id) }
  | ETEINDRE; PAR_G; id = IDENT; PAR_D; POINT_VIRGULE
      { Eteindre id }
  | CLIGNOTER; PAR_G; id = IDENT; VIRGULE; e = expression; u = unite; PAR_D; POINT_VIRGULE
      { Clignoter (id, e, u) }
  | PAUSE; PAR_G; e = expression; u = unite; PAR_D; POINT_VIRGULE
      { Pause (e, u) }

iteration:
  | POUR; id = IDENT; DEUX_POINTS; d = expression; DEUX_POINTS; f = expression;
    ACCOLADE_G; l = list(instruction); ACCOLADE_D
      { Pour (id, d, f, l) }
  | TOUTES; e = expression; u = unite;
    ACCOLADE_G; l = list(instruction); ACCOLADE_D
      { Toutes (e, u, l) }

conditionnel:
  | SI; b = booleen; ACCOLADE_G; l = list(instruction); ACCOLADE_D
      { Si (b, l, []) }
  | SI; b = booleen; ACCOLADE_G; l1 = list(instruction); ACCOLADE_D;
    SINON; ACCOLADE_G; l2 = list(instruction); ACCOLADE_D
      { Si (b, l1, l2) }

declaration:
  | d = declaration_var    { d }
  | d = declaration_comp   { d }
  | d = declaration_trans  { d }

declaration_var:
  | CONSTANTE; t = type_var; id = IDENT; EGAL; e = expression; POINT_VIRGULE
      { DeclVar (true, t, id, e) }
  | t = type_var; id = IDENT; EGAL; e = expression; POINT_VIRGULE
      { DeclVar (false, t, id, e) }

declaration_comp:
  | t = type_comp; id = IDENT; DEUX_POINTS; e = expression; POINT_VIRGULE
      { DeclComp (t, id, e) }

declaration_trans:
  | t = type_transmission; id = IDENT; DEUX_POINTS; e = expression; POINT_VIRGULE
      { DeclTransmission (t, id, [e]) }
  | t = type_transmission; id = IDENT; DEUX_POINTS; e1 = expression;
    VIRGULE; e2 = expression; POINT_VIRGULE
      { DeclTransmission (t, id, [e1; e2]) }

type_var:
  | ENTIER    { TypeEntier }
  | FLOTTANT  { TypeFlottant }
  | TEXTE     { TypeTexte }

type_comp:
  | TEMPERATURE  { Temperature }
  | LED          { Led }

type_transmission:
  | WIFI       { Wifi }
  | BLUETOOTH  { Bluetooth }

expression:
  | LIRE; PAR_G; id = IDENT; PAR_D  { Lire id }
  | c = calcul                      { Calcul c }
  | t = CHAINE                      { Texte t }

calcul:
  | v = NOMBRE    { Nombre v }
  | v = DECIMAL   { Flottant v }
  | id = IDENT    { Id id }
  | PAR_G; v1 = calcul; o = calcul_operateur; v2 = calcul; PAR_D
      { Operation (v1, o, v2) }

calcul_operateur:
  | PLUS    { Addition }
  | MOINS   { Soustraction }
  | FOIS    { Multiplication }
  | DIVISE  { Division }

booleen:
  | VRAI  { Vrai }
  | FAUX  { Faux }
  | e1 = expression; v = verificateur; e2 = expression
      { Comparaison (e1, v, e2) }
  | PAR_G; b1 = booleen; o = logique_operateur; b2 = booleen; PAR_D
      { Logique (b1, o, b2) }
  | NON; PAR_G; b1 = booleen; o = logique_operateur; b2 = booleen; PAR_D
      { Non (Logique (b1, o, b2)) }

verificateur:
  | EGAL_EGAL  { Egal }
  | SUP        { Sup }
  | SUP_EGAL   { SupEgal }
  | INF        { Inf }
  | INF_EGAL   { InfEgal }
  | DIFFERENT  { Different }

logique_operateur:
  | ET  { Et }
  | OU  { Ou }