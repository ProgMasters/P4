fun partition f [] = ([], [])
|	partition f (x::l) = 
	let
		fun iter f (x::l) lis1 lis2 = 
			if(f(x)) then iter f l (x::lis1) lis2
			else iter f l lis1 (x::lis2)
		| iter f [] lis1 lis2 = (List.rev lis1, List.rev lis2)
		in iter f l [] []		
	end;