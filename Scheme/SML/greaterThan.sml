fun greaterThan (x::xl) k = if x > k then x::(greaterThan xl k) else greaterThan xl k
| greaterThan [] k = [];