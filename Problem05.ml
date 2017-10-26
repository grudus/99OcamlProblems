(* 5. Reverse a list. (easy)

# rev ["a" ; "b" ; "c"];;
- : string list = ["c"; "b"; "a"]

OCaml standard library has List.rev but we ask that you reimplement it. *)

let rec rev = function
	  [] -> []
	| h::t -> rev t @ [h] ;; 