(* 15. Replicate the elements of a list a given number of times. (medium)


# replicate ["a";"b";"c"] 3;;
- : string list = ["a"; "a"; "a"; "b"; "b"; "b"; "c"; "c"; "c"] 
*)

let rec replicate list times =
	let rec repl item count = match count with
		  0 -> []
		| i -> item :: repl item (i - 1) in
	match list with 
		  [] -> []
		| h::t -> repl h times @ replicate t times ;;   