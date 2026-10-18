open Ast 

let progr = (Budget(Calcul(Nombre(5)), MJ, Cycle)), 
[Declaration(DeclComp(Led,"l1",Calcul(Nombre(5)))); 
Action(Allumer("l1")); 
Action(Pause(Calcul(Nombre(5)), Ms));
Action(Eteindre("l1"))]

let borne prog = 
  let rec aux l = 
    match l with
     |_ -> "coucou"
  in 
  match prog with
    | Budget(a,u1,u2), l -> aux l 
    | _ -> failwith "le programme n'est pas conforme"