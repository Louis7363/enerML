open Ast
open Semantique

let calcul_valeur c1 op c2 = 
   match c1, op, c2 with 
      | Nombre(a1) , Addition, Nombre(a2) -> 
         Nombre(a1 + a2)
      | Flottant (a1) , Addition, Flottant(a2) -> Flottant(a1 +. a2)
      | Nombre(a1) , Soustraction, Nombre(a2) -> 
         Nombre(a1 - a2)
      | Flottant (a1) , Soustraction, Flottant(a2) -> Flottant(a1 -. a2)      
      | Nombre(a1) , Multiplication, Nombre(a2) -> 
         Nombre(a1 * a2)
      | Flottant (a1) , Multiplication, Flottant(a2) -> Flottant(a1 *. a2)
      | Nombre(a1) , Division, Nombre(a2) -> 
         Nombre(a1 / a2)
      | Flottant (a1) , Division, Flottant(a2) -> Flottant(a1 /. a2)
      | _ -> failwith "erreur"

let rec calcul_valeur_f = function
    | Operation (c1, s, c2) -> calcul_valeur (calcul_valeur_f c1) s (calcul_valeur_f c2)
    | Nombre (a) -> Nombre a
    | Flottant (b) -> Flottant b 
    | Id(id) -> match Hashtbl.find hashval id with
                  | Calcul (c) -> calcul_valeur_f c
                  | _ -> failwith "erreur dans la vérification constante dans semantique"


let uni t = 
  match t with
    | S -> 10
    | Ms -> 2
    | _ -> 0

let tableallume = Hashtbl.create 2

let calbor = function
  | Allumer (id) -> Hashtbl.add tableallume id 1; 0
  | Envoyer (_) -> 3
  | Eteindre (id) -> (match (Hashtbl.find_opt tableallume id) with
                         | Some k -> Hashtbl.remove tableallume id;  k
                         | None -> 0 )
  | Clignoter (_,e,t) -> 2 * uni t
  | Pause(_) -> Hashtbl.iter (fun c v -> Hashtbl.replace tableallume c (v+1) ) tableallume; 0

  let rec bornel = function
    | [] -> 0
    | Declaration(_)::q -> bornel q
    | Action(a)::q -> let x = calbor a in x + bornel q
   | Iteration(i)::q -> let x = itebor i in x + bornel q
   | Conditionnel(c)::q -> let x = conbor c in x + bornel q
and conbor = function (*Peut être envisager un solveur SAT pour gagner un peu ? faudra que je fasse des calculs pour vérifier, ou alors faute du développeur *)
    | Si (Vrai, l1, l2) -> bornel l1
    |  Si (Faux, l1, l2) ->bornel l2
    | Si (_, l1, l2) -> let b1 = bornel l1 in let b2 = bornel l2 in max b1 b2

and itebor = function
  | Pour (id, Calcul(a), Calcul(b), l) ->( let na = calcul_valeur_f a in let nb = calcul_valeur_f b in
                           match na, nb with
                              | Nombre (k1), Nombre(k2) -> (k2 - k1 + 1) * bornel l
                              | _ -> failwith "erreur vérification bornes dans sémantique" )
  | Toutes (_, _, l) -> bornel l 
  | _ -> 0



let borne prog = 
  match prog with
    | Budget(a,u1,u2), l -> bornel l 
    | _ -> failwith "le programme n'est pas conforme"