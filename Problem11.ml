(* 11. Modified run-length encoding. (easy)

Modify the result of the previous problem in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

Since OCaml lists are homogeneous, one needs to define a type to hold both single elements and sub-lists.

# type 'a rle =
    | One of 'a
    | Many of int * 'a;;
type 'a rle = One of 'a | Many of int * 'a

# encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
- : string rle list =
[Many (4, "a"); One "b"; Many (2, "c"); Many (2, "a"); One "d";
 Many (4, "e")] 
*)


let rec encode list = match list with
	| [] -> []
	| a::(b::t as l) when a=b -> 
		(match encode l with 
			| [] -> [ Many(2,a) ] 
			| Many (count,elem) ::tail -> Many(count+1,elem) :: tail 
			| One x :: t -> Many(2, x) :: t) 
	| a::t -> (One a) :: (encode t) ;;