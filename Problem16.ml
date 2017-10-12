(* 16. Drop every N'th element from a list. (medium)


# drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;
- : string list = ["a"; "b"; "d"; "e"; "g"; "h"; "j"]
 *)

 let rec drop list count = 
 	if count = 0 then List.tl list
 	else List.hd list :: drop (List.tl list) (count - 1) ;; 