(* 18. Extract a slice from a list. (medium)

Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 0 (this is the way the List module numbers elements).


# slice ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 2 6;;
- : string list = ["c"; "d"; "e"; "f"; "g"]
 *)

let rec slice list indexFrom indexTo = 
	if list = [] then []
	else if indexTo = -1 then []
	else if indexFrom = 0 && indexTo <> -1 then List.hd list :: (slice (List.tl list) indexFrom (indexTo - 1))
	else slice (List.tl list) (indexFrom - 1) (indexTo - 1) ;;    