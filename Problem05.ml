(* 5. Reverse a list. (easy)

# rev ["a" ; "b" ; "c"];;
- : string list = ["c"; "b"; "a"]

OCaml standard library has List.rev but we ask that you reimplement it. *)

let rec rev list = 
	if list = [] then []
	else rev (List.tl list) @ [List.hd list] ;; 