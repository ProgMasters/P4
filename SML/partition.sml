fun partition f [] = ([], [])
| partition f l = 
	let
		fun left f (x::lis) = 
			if f(x) then x::(left f lis)
			else left f lis
		| left f [] = []

		fun right f (y::lis) = 
			if f(y) then right f lis
			else y::(right f lis)
		| right f [] = []
	in (left f l, right f l)
end;