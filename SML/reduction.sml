fun reduction f [x] = x
| reduction f (x::y::l) = reduction f (f(x, y)::l);