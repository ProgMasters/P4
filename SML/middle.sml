fun removeLast [] = []
| removeLast [a] = []
| removeLast (a::l) = a::removeLast(l);

fun length [] = 0
| length (a::l) = 1 + length(l);

fun middle [a] = a
| middle (a::l) = if ((length(a::l) mod 2) = 1) then middle(removeLast(l))
                  else middle(l);