(* 8. Eliminate consecutive duplicates of list elements. (medium) 

# compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
- : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
*)

let compress list = 
	let rec contains aux elem =
		if aux = [] then false
		else List.hd aux = elem || contains (List.tl aux) elem  in
	let rec comp elemLists uniqueList = 
		if elemLists = [] then uniqueList
		else (
			if contains uniqueList (List.hd elemLists) then comp (List.tl elemLists) uniqueList 
			else comp (List.tl elemLists) (uniqueList @ [List.hd elemLists])) in
	comp list [] ;;

