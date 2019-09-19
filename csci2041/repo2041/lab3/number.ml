


type number = Int of int | Float of float
let z1 = Int 1
let z2 = Int 2
let r1 = Float 1.0
let r2 = Float 2.0

let to_int (n:number) = match n with
| Int i -> Some i
| Float f -> None

let to_float (n:number) = match n with
| Int i -> None
| Float f -> Some f

let float_of_number (n:number) = match n with
| Int i ->  (float_of_int i)
| Float f ->  f

let (+?) n1 n2 = match (n1,n2) with
|(Int i1, Int i2)-> Int (i1 + i2)
|(Float f1, Int i2)-> Float (f1 +. (float_of_number n2))
|(Float f1, Float i2)-> Float (f1 +. i2)
|(Int i1, Float f2)-> Float ((float_of_number n1) +. f2)
