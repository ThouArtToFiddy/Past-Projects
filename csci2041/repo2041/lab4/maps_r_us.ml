(* picky function to truncate to places decimals *)
let float_trunc places s =
  let mul = 10. ** (float_of_int places) in
  (floor (s *. mul)) /. mul

let to_meters l =
let convert temp = match temp with
| (feet, inches) -> float_trunc 2 (float_of_int(feet)*.0.3048 +. float_of_int(inches)*.0.3048/.12.0)
| _ -> 0.0;
in List.map convert l


let rot13 s =
let convert c = match c with
| 'a'..'z' -> char_of_int (97+((int_of_char(c)-97+13) mod 26))
| 'A'..'Z' ->  char_of_int (65+((int_of_char(c)-65+13) mod 26))
| x -> x
in String.map convert s
