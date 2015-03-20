fun zip nil b = []
|   zip a nil = []
|   zip (a::al) (b::bl) = (a,b)::(zip al bl);