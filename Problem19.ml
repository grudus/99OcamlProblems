(* 19. Rotate a list N places to the left. (medium)



# rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] 3;;
- : string list = ["d"; "e"; "f"; "g"; "h"; "a"; "b"; "c"]
# rotate ["a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"] (-2);;
- : string list = ["g"; "h"; "a"; "b"; "c"; "d"; "e"; "f"]

 *)


let rec rotate list elems = 
	let len = List.length list in 
 	let smallIndex = elems mod len in 
 	let index = (if smallIndex > 0 then smallIndex else len + smallIndex) in
 	let rec rot aux rotated times  =
 		if times = 0 then aux @ (List.rev rotated)
 		else rot (List.tl aux) (List.hd aux :: rotated) (times - 1) in
 	rot list [] index;;
