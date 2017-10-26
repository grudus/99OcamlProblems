(* 3. Find the k'th element of a list. (easy) 

# at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
- : string option = Some "c"
# at 3 [ "a" ];;
- : string option = None

REMARK: OCaml has List.nth which numbers elements from 0 and raises an exception if the index is out of bounds.
*)

let rec at index list = match (index, list) with
	  (_, []) -> None 
	| (1, h::_) -> Some h
	| (i, _::t) -> at (i-1) t;; 