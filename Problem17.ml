(* 17. Split a list into two parts; the length of the first part is given. (easy)

If the length of the first part is longer than the entire list, then the first part is the list and the second part is empty.


# split ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
- : string list * string list =
(["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"])
# split ["a";"b";"c";"d"] 5;;
- : string list * string list = (["a"; "b"; "c"; "d"], [])
 *)

 let rec split list index = 
 	if list = [] then ([], [])
 	else if index = 0 then ([], list)
 	else let splitted = split (List.tl list) (index - 1) in
 		(List.hd list :: fst splitted, snd splitted) ;;
