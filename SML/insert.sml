fun insert (x:real, []) = [x]
| insert (x:real, a::l) = if x < a then x::a::l
                          else a::insert(x, l);