(* 2. Find the last but one (last and penultimate) elements of a list. (easy) 

# last_two [ "a" ; "b" ; "c" ; "d" ];;
- : (string * string) option = Some ("c", "d")
# last_two [ "a" ];;
- : (string * string) option = None
*)

let rec last_two list = 
	if list = [] || List.tl list = [] then None
	else if List.length list = 2 then Some (List.hd list, List.nth list 1)
	else last_two (List.tl list) ;;
