(* 4. Find the number of elements of a list. (easy)


# length [ "a" ; "b" ; "c"];;
- : int = 3
# length [];;
- : int = 0

OCaml standard library has List.length but we ask that you reimplement it. Bonus for a tail recursive solution. *)


let length list = 
	let rec tailLength list len  = match list with 
		  [] -> len
		| _::t -> tailLength t (len + 1) in
	tailLength list 0;; 