(* tables.ml - CSci 2041 HW 1 table slicer and dicer *)
(*Jerry Wu wu000169*)

(* Free functions, don't question! *)
let read_lines () =
  let rec read_help acc =
    try read_help ((read_line ())::acc) with End_of_file -> List.rev acc
  in read_help []

let make_row delim str = List.map String.trim (Str.split (Str.regexp delim) str)

let rec write_row r delim = match r with
| [] -> ()
| h::[] -> print_endline h
| h::t -> let () = print_string h in
          let () = print_string delim in write_row t delim

let rec output_table od t = match t with
| [] -> ()
| r::rs -> let () = write_row r od in output_table od rs

(* Now your turn. *)

let table_of_stringlist delim rlist =
let rec helper delim rlist currentlist = match rlist with
| [] -> currentlist
| h::t -> helper delim t (make_row delim h :: currentlist) in
List.sort compare (helper delim rlist [])

let make_assoc (rc_list:string list list) =
  let rec helper r c var accum = match var with
  |[] -> accum
  |h::t -> (r,c,h)::helper r (c+1) t accum
  in let rec helper2 row col lst accum = match lst with
  |[] -> accum
  |h::t -> helper2 (row+1) col t (helper row col h accum)
  in helper2 1 1 rc_list []


let delete_column (d:int) alist =
let rec helper d alist accum = match alist with
|[] -> accum
|(a,b,c)::t ->
  if b < d
    then helper d t ((a,b,c)::accum)
  else if b > d
    then helper d t ((a,(b-1),c)::accum)
  else
    helper d t accum
in helper d alist []

let move_column (src:int) (dst:int) alist =
let rec failcheck lst maxi = match lst with
|[] -> maxi
|(a,b,c)::t-> if b > maxi then failcheck t b
else failcheck t maxi in
if (src > failcheck alist 0) then failwith "column index out of range" (*function to check if source was valid*)
else
let rec helper lst accum = match lst with
|[] -> accum
|(a,b,c)::t ->
  if (src < 1 || dst < 1) then failwith "column index out of range"
  else if b = src then helper  t ((a,dst,c) :: accum)    (*When the column matches the dst it is always sent to the dst column*)
  else if src < dst
    then
    if (b <= dst && b > src)
      then helper  t ((a,(b-1),c) :: accum) (*Case that the src is less than dst and b is between src and dst*)
    else helper t ((a,b,c) :: accum) (*Case that the src is less than dst and b is not between src and dst*)
  else if src > dst
    then
    if (b >= dst && b < src )
      then helper t ((a,(b+1),c) :: accum) (*Case that the src is greater than dst and b is between src and dst*)
    else helper  t ((a,b,c) :: accum) (*Case that the src is greater than dst and b is not between src and dst*)
  else lst  (*Case that the src = dst*)
in helper alist []

let transpose_table alist =
let rec helper alist accum = match alist with
| [] -> accum
| (a,b,c)::t -> helper t ((b,a,c)::accum)
in helper alist []


let table_of_assoc (alist : (int*int*string) list) =
let lst = List.sort compare alist in
let rec helper2 row col ls = match ls with
| [] -> []
| (a,b,c)::t ->
  if a > row
    then []
  else if b > col
    then "" :: helper2 row (col+1) ls
  else c :: helper2 row (col+1) t in
let rec helper row col ls = match ls with
| [] -> []
| (a,b,c) :: t ->
  if a < row
    then helper row 1 t
  else if a = row
    then helper2 row 1 ls :: helper (row+1) 1 t
  else [] :: helper (row+1) 1 ls (*When a > row*)
in helper 1 1 lst



(* OK, more free stuff *)
let main ops id od =
  let sl = read_lines () in
  let rtable = table_of_stringlist id sl in
  let atab = make_assoc rtable in
  let rec apply ops tab = begin
    match ops with
    | [] -> tab
    | ('t',_,_)::tl -> apply tl (transpose_table tab)
    | ('m',s,d)::tl -> apply tl (move_column s d tab)
    | ('d',c,_)::tl -> apply tl (delete_column c tab)
    | _ -> failwith "unrecognized command"
  end in
  let atab' = apply ops atab in
  let ntable = table_of_assoc atab' in
  output_table od ntable
