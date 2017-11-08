(* 10. Run-length encoding of a list. (easy)

If you need so, refresh your memory about run-length encoding.

Here is an example:

# encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
- : (int * string) list =
[(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")] 
*)


let rec encode list = match list with
	| [] -> []
	| a::(b::t as l) when a = b -> 
		(match encode l with 
			| [] -> [(2,a)] 
			| (count,elem)::tail -> (count+1,elem)::tail) 
	| a::t -> (1,a) :: (encode t) ;;