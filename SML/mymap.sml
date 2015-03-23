fun mymap f [] = []
| mymap f (a::l) = (f a)::(mymap f l);