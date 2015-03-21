fun partition f [] = ([], [])
|	partition f (x::l) = let
		fun ftuble f (x::l) trueList falseList =
			if (f x)
				then ftuble f l (x::trueList) falseList
			else ftuble f l trueList (x::falseList)
			| ftuble _ [] trueList falseList = (trueList, falseList)
		in ftuble f(x::l) [] []
	end;