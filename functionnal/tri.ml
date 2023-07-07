
(* selection sort*)
let rec extrait_min l =
    match l with
    | [] -> failwith "érfsd"
    | [x] -> (x,[])
    | t::q -> let x,r = extrait_min q in
      if t < x then (t,q) else (x,t::r)

let rec selection_sort l = 
    if l = [] then []
    else let m,r = extrait_min l in
      m::(selection_sort r)


let print_list = List.iter (fun i -> print_int i; print_char ' ')

let tri () =
    let r = [1;2;35;8;6;8;13;5;11;31;10] in
    print_list (selection_sort r)
      
