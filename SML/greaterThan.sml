fun greaterThan [] k = []
| greaterThan (x::xl) k = if x > k then x::(greaterThan xl k) else greaterThan xl k;