(* 20. Remove the K'th element from a list. (easy)

The first element of the list is numbered 0, the second 1,...

# remove_at 1 ["a";"b";"c";"d"];;
- : string list = ["a"; "c"; "d"]
 *)

 let rec remove_at index list = 
 	if list = [] then []
 	else if index = 0 then List.tl list
 	else List.hd list :: remove_at (index - 1) (List.tl list) ;; 