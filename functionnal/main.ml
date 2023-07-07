
(* permutations quelquconques*)
let rec permute l =
    if l = [] then [[]]
    else
        let open List in
        concat (map 
          (fun t-> map (cons t) (permute (filter ((<>) t) l)))
    l)
(*echquier infini*)
let rec l0 = 0::l1 and l1 = 1::l0 and echquier = l0::l1::echquier

let () =
    List.iter (List.iter print_int) (permute [1;2;3]);
    print_newline ();
    Tri.tri ();
    print_newline ();
