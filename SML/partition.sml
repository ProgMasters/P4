fun partition f [] = ([], [])
|	partition f (x::l) = let
		fun iter f (x::l) trueList falseList =
			if (f x)
				then iter f l (x::trueList) falseList
			else iter f l trueList (x::falseList)
			| iter f [] trueList falseList = (trueList, falseList)
		in iter f(x::l) [] []
	end;