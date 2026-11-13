open Semantique
open Borne

let () =
  let fichier = Sys.argv.(1) in
  let buf = Lexing.from_channel (open_in fichier) in
  let arbre = Parser.programme Lexer.next_token buf in
  Semantique.verification_variables(arbre);
  let n = Borne.borne arbre in 
  print_int n;
  ()
