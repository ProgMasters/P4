fun removeLast [] = []
| removeLast [a] = []
| removeLast (a::l) = a::removeLast(l);

fun length [] = 0
| length (a::l) = 1 + length(l);

(* hint: if the length of the list is odd and greater than 1, the middle element of a list is the the middle element of the list that you obtain after removing the first and the last element (a similar consideration should be done for lists whose length is even) *)

fun middle [a] = a
| middle (a::l) = if ((length(a::l) mod 2) = 1) then middle(removeLast(l))
                  else middle(l);