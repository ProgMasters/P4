fun reduce f [] = []
| reduce f [x] = x
| reduce f (x::xl) = f(x, reduce f xl);