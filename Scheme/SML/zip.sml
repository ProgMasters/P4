fun zip (a::al) (b::bl) = (a,b)::(zip al bl)
  | zip nil b  = []
  | zip a nil = [];