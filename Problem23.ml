(* 23. Extract a given number of randomly selected elements from a list. (medium)

The selected items shall be returned in a list. We use the Random module but do not initialize it with Random.self_init for reproducibility.


# rand_select ["a";"b";"c";"d";"e";"f";"g";"h"] 3;;
- : string list = ["g"; "d"; "a"] *)


let rand_select list range = 
	let max = List.length list in
	let rec randomize count acc = match count with
	  | i when i = range -> acc
	  | i -> let random = Random.int max 
			in let item = List.nth list random 
			in if List.mem item acc then randomize count acc
				else randomize (count+1) (item::acc)
	in randomize 0 [] ;;