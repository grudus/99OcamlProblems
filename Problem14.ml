(* 14. Duplicate the elements of a list. (easy)


# duplicate ["a";"b";"c";"c";"d"];;
- : string list = ["a"; "a"; "b"; "b"; "c"; "c"; "c"; "c"; "d"; "d"] 
*)

let rec duplicate list = 
	if list = [] then []
	else List.hd list :: List.hd list :: duplicate (List.tl list) ;; 