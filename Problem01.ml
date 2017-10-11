(* 1. Write a function last : 'a list -> 'a option that returns the last element of a list. 

# last [ "a" ; "b" ; "c" ; "d" ];;
- : string option = Some "d"
# last [];;
- : 'a option = None
*)

let rec last list = 
	if list = [] then None
	else if List.tl list = [] then Some (List.hd list)
	else last (List.tl list) ;;


