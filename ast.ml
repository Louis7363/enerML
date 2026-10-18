(* Arbre syntaxique abstrait (AST) d'enerML *)

type identifiant = string

type unite =
  | S | Ms | An | MAh | Ah | V | MV | MJ | J | Cycle

type calcul_operateur =
  | Addition | Soustraction | Multiplication | Division

type calcul =
  | Operation of calcul * calcul_operateur * calcul
  | Nombre of int
  | Flottant of float
  | Id of identifiant

type expression =
  | Calcul of calcul
  | Lire of identifiant
  | Texte of string

type verificateur =
  | Egal | Sup | SupEgal | Inf | InfEgal | Different

type logique_operateur =
  | Et | Ou

type booleen =
  | Vrai
  | Faux
  | Comparaison of expression * verificateur * expression
  | Logique of booleen * logique_operateur * booleen
  | Non of booleen  

type type_var =
  | TypeEntier | TypeFlottant | TypeTexte

type type_comp =
  | Temperature | Led

type type_transmission =
  | Wifi | Bluetooth

type declaration =
  | DeclVar of bool * type_var * identifiant * expression (*bool correspond à constante ?*)
  | DeclComp of type_comp * identifiant * expression
  | DeclTransmission of type_transmission * identifiant * expression list

type action =
  | Allumer of identifiant
  | Envoyer of expression * identifiant
  | Eteindre of identifiant
  | Clignoter of identifiant * expression * unite
  | Pause of expression * unite

type condition_energie =
  | Budget of expression * unite * unite
  | Autonomie of expression * unite * expression * unite * expression * unite


type instruction =
  | Declaration of declaration
  | Action of action
  | Iteration of iteration
  | Conditionnel of conditionnel

and iteration =
  | Pour of identifiant * expression * expression * instruction list
  | Toutes of expression * unite * instruction list

and conditionnel =
  (* liste vide s'il n'y a pas de sinon *)
  | Si of booleen * instruction list * instruction list

type programme = condition_energie * instruction list