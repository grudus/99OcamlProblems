(* 6. Find out whether a list is a palindrome. (easy)

# is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ];;
- : bool = true
# not (is_palindrome [ "a" ; "b" ]);;
- : bool = true

HINT: a palindrome is its own reverse. *)


let is_palindrome list = list = List.rev list ;;