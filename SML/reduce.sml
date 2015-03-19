fun reduce f [] = raise Empty
| reduce f [x] = x
| reduce f (x::xl) = f(x, reduce f xl);