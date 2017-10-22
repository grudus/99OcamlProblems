(* 2. Find the last but one (last and penultimate) elements of a list. (easy) 

# last_two [ "a" ; "b" ; "c" ; "d" ];;
- : (string * string) option = Some ("c", "d")
# last_two [ "a" ];;
- : (string * string) option = None
*)

let rec last_two = function
    [] -> None
  | [h1;h2] -> Some (h1, h2)
  | _::t -> last_two t ;;