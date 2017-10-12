(* 22. Create a list containing all integers within a given range. (easy)

If first argument is greater than second, produce a list in decreasing order.

Solution

# range 4 9;;
- : int list = [4; 5; 6; 7; 8; 9]
# range 9 4;;
- : int list = [9; 8; 7; 6; 5; 4] 

*)

let rec range fromNumber toNumber =
	let increment = if fromNumber < toNumber then 1 else -1 in
	if fromNumber = toNumber then [toNumber]
	else fromNumber :: range (fromNumber + increment) (toNumber) ;; 