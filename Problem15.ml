(* 15. Replicate the elements of a list a given number of times. (medium)


# replicate ["a";"b";"c"] 3;;
- : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"] 
*)

let rec replicate list times =
	let rec repl item count = 
		if count = 0 then []
		else item :: repl item (count - 1) in
	if list = [] then []
	else repl (List.hd list) times @ replicate (List.tl list) times ;;   