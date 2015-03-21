fun cartesian lis1 lis2 = 
	let
		fun firstPair (x, []) = []
		| firstPair (x, y::lis2) = (x,y)::firstPair(x,lis2)
		fun secondPair ([], lis2) = []
		| secondPair (x::lis1, lis2) = firstPair(x, lis2) @ secondPair (lis1, lis2)
	in secondPair (lis1, lis2) end;