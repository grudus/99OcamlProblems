(* 24. Lotto: Draw N different random numbers from the set 1..M. (easy)

The selected numbers shall be returned in a list.

# lotto_select 6 49;;
- : int list = [10; 20; 44; 22; 41; 2] *)


let lotto_select number max = 
	if number >= max then failwith "Invalid index"
	else
		let rec random count acc = match count with 
			| i when i = number -> acc
			| i -> 
				let rand = Random.int (max-1) + 1 in
				if List.mem rand acc then random i acc
				else random (i+1) (rand :: acc)
		in random 0 [] ;;  