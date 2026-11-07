open Ast

exception VariableNoDecl of identifiant
exception MauvaisType of identifiant 
exception PasConst of identifiant
exception FlottantBoucle of identifiant

let rec verifboucle a thash id = 
   match a with 
    | Lire(_) -> raise (PasConst id)
    | Texte (_) -> raise (PasConst id)
    | Calcul (Nombre(_)) -> ()
    | Calcul(Flottant(_)) -> raise (FlottantBoucle id)
    | Calcul(Id(ide)) -> if not (Hashtbl.find thash ide = "VarC") then raise (PasConst id)
    | Calcul(Operation(c1, signe, c2)) -> verifboucle (Calcul(c1)) thash id; verifboucle (Calcul(c2)) thash id



let verification_variables programme = 
   try
  let thash = Hashtbl.create 10 in
  let rec aux l = match l with 
  
      | (Declaration(DeclComp (a, id, b)))::q -> Hashtbl.add thash id "Comp"; aux q 
      | (Declaration(DeclTransmission(a,id,l)))::q -> Hashtbl.add thash id "Trans"; aux q 
      | Declaration(DeclVar(a,b,id,c))::q -> if a = true then Hashtbl.add thash id "VarC" else Hashtbl.add thash id "Var"; aux q 
      | Iteration(Pour(id,a,b,l))::q -> Hashtbl.add thash id "Var"; aux l; aux q; verifboucle a thash id; verifboucle b thash id
      | Iteration(Toutes (_,_,l))::q -> aux l; aux q
      | Action(Allumer(id))::q | Action(Eteindre(id))::q 
         -> if (Hashtbl.mem thash id) then 
            aux q 
         else raise (VariableNoDecl (id))
         ;if not(Hashtbl.find thash id = "Trans" || Hashtbl.find thash id = "Comp") then
            raise (MauvaisType (id))
      | Action(Envoyer(_,id))::q -> 
         if (Hashtbl.mem thash id) then 
            aux q 
         else raise (VariableNoDecl (id))
         ;if not(Hashtbl.find thash id = "Trans") then
            raise (MauvaisType (id))
      | Action(Clignoter (id,_,_))::q -> 
         if (Hashtbl.mem thash id) then 
            aux q 
         else raise (VariableNoDecl (id))
         ;if not(Hashtbl.find thash id = "Comp") then
            raise (MauvaisType (id))
      | Conditionnel(Si(_,l2,l3))::q -> aux l2; aux l3; aux q
      | _ -> print_string "Tout bon"
   
(*ATTENTION ! IL ME MANQUE LE CAS LIRE (qqch) MAIS JE SAIS PAS ENCORE COMMENT FAIRE*)

   in aux (snd programme) 
with
   | VariableNoDecl(id) -> Printf.printf "La variable %s non declare" id
   | MauvaisType(id)-> Printf.printf "La variable %s n'a pas le bon type" id

