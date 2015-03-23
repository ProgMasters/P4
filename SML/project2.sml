fun zip nil b = []
|   zip a nil = []
|   zip (a::al) (b::bl) = (a,b)::(zip al bl);

fun greaterThan [] k = []
| greaterThan (x::xl) k = if x > k then x::(greaterThan xl k) else greaterThan xl k;

fun reduction f [x] = x
| reduction f (x::y::l) = reduction f (f(x, y)::l);

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

fun insert (x:real, []) = [x]
| insert (x:real, a::l) = if x < a then x::a::l
                          else a::insert(x, l);

fun insertsort ([]) = []
| insertsort(a::l) = insert(a, insertsort(l));

fun removeLast [] = []
| removeLast [a] = []
| removeLast (a::l) = a::removeLast(l);

fun length [] = 0
| length (a::l) = 1 + length(l);

fun middle [a] = a
| middle (a::l) = if ((length(a::l) mod 2) = 1) then middle(removeLast(l))
                  else middle(l);

fun cartesian lis1 lis2 = 
	let
		fun firstPair (x, []) = []
		| firstPair (x, y::lis2) = (x,y)::firstPair(x,lis2)
		fun secondPair ([], lis2) = []
		| secondPair (x::lis1, lis2) = firstPair(x, lis2) @ secondPair (lis1, lis2)
	in secondPair (lis1, lis2) end;

fun mymap f [] = []
| mymap f (a::l) = (f a)::(mymap f l);

zip [1,2,3] ["a","b","c"];

zip [1,2] ["a"];

greaterThan [1,5,3,2,4] 3;

reduction op+ [1,3,5,7,9];

reduction op* [1,3,5,7,9];

partition Char.isLower [#"P",#"a",#"3",#"%",#"b"];

insert (3.3, [1.1, 2.2, 4.4, 5.5]);

insertsort [2.2, 4.4, 5.5, 3.3, 1.1];

middle [1,2,3,4,5];

middle [true, false];

cartesian ["a","b","c"] [1,2];

(mymap (fn x => x*x)) [1,2,3,4]