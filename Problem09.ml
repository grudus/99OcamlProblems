(*  Pack consecutive duplicates of list elements into sublists. (medium) *)
(* # pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
- : string list list =
[["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"];
 ["e"; "e"; "e"; "e"]]
  *)

let pack list =
  let rec add xss x = match xss with
  | [] -> [[x]]
  | h::t when List.mem x h -> (x::h) :: t
  | h::t -> h :: add t x
in List.fold_left (fun acc a -> add acc a) [] list;;