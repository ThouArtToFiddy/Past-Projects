(* slicendice.ml - command line "driver" for HW1, CSci 2041, Spring 2019 (Hopper) *)

(* parse the command line arguments and call the main function in tables.ml *)
let rec slice_and_dice arglist oplist id od = match arglist with
| [] -> Tables.main (List.rev oplist) id od
| "--idelim"::d::t -> slice_and_dice t oplist d od
| "--odelim"::d::t -> slice_and_dice t oplist id d
| "--transpose"::t -> slice_and_dice t (('t',0,0)::oplist) id od
| "--cut"::c::t -> slice_and_dice t (('d',int_of_string c,0)::oplist) id od
| "--move"::s::d::t -> slice_and_dice t (('m',int_of_string s,int_of_string d)::oplist) id od
| _ -> failwith "slice_and_dice: invalid argument format"


(* make the call! *)
let () = slice_and_dice (List.tl (Array.to_list Sys.argv)) [] "," ","
