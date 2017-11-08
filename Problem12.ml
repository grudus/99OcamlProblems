(* 12. Decode a run-length encoded list. (medium)

Given a run-length code list generated as specified in the previous problem, construct its uncompressed version.


# decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many (4,"e")];;
- : string list =
["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"] *)

type 'a rle =
    | One of 'a
    | Many of int * 'a;;

let rec decode list = 
	let rec createList count elem = match count with
	  | 0 -> []
	  | i -> elem :: createList (i-1) elem

	in match list with
	  | [] -> []
	  | One v :: t -> v :: decode t
	  | Many (count, v) :: t -> (createList count v) @ decode t ;;