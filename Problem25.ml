(* 25. Generate a random permutation of the elements of a list. (easy)

# permutation ["a"; "b"; "c"; "d"; "e"; "f"];;
- : string list = ["a"; "e"; "f"; "b"; "d"; "c"] *)

let permute list = 
	let max = List.length list in
	let rec randomize count acc = match count with
	  | i when i = max -> acc
	  | i -> let random = Random.int max 
			in let item = List.nth list random 
			in if List.mem item acc then randomize count acc
				else randomize (count+1) (item::acc)
	in randomize 0 [] ;;