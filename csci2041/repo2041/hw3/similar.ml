open SimUtil

let ngram_n = 4
(* Your code goes here: *)

(* Define the function that lower-cases and filters out non-alphabetic characters *)
let filter_chars s = let y = String.lowercase_ascii s in
 String.map (fun x -> if (x >= 'a' && x <= 'z') then x else ' ') y

(* extract a list of n-grams from a string, naively *)
let ngrams n s = List.init (String.length s - n + 1) (fun x -> String.sub s x n)

(* Define the function that converts a string into a list of "normalized" n-grams *)
let n_grams s =
let prelst = ngrams ngram_n s in
List.filter (fun x -> if (String.contains x ' ') then false else true ) (List.map (fun x -> filter_chars x) prelst)
(* Define a function to convert a list into a bag *)
let bag_of_list lst =
(* Bag utility functions *)
let baghelper l v =
  let listvals = List.rev_map (fun p -> match p with (a,b) -> a) l in
if (not (List.mem v listvals)) then (v,1)::l (*Check whether it is in the list already *)
else
  (List.rev_map (fun ls -> match ls with
  | (a,b) -> if v = a then (a,b+1) else (a,b) ) l) in
List.fold_left (fun ls x -> (baghelper ls x)) [] lst



(* multiplicity of e in bag b - 0 if not in the bag *)
let multiplicity e b =
let found = List.filter (fun x -> match x with (j,k) -> if j = e then true else false) b in
match found with
| (o,p)::[] -> p
| _ -> 0
(* size of a bag is the sum of the multiplicities of its elements *)
let size b = List.fold_left (fun acc x ->
  match x with (j,k) -> (multiplicity j b) + acc ) 0 b

(* Define the similarity function between two sets: size of intersection / size of union *)
let intersection_size s1 s2 =

 let grams = List.rev_map (fun x -> match x with (a,b) -> a) s1 in (*Gets the list of grams of each *)
 let grams2 = List.rev_map (fun x -> match x with (a,b) -> a) s2 in
 (* Set of all shared grams between s1 and s2*)
 let simgrams =  List.filter (fun x -> if ( List.mem x grams) then true else false) grams2 in

(* Go through each bag and check their multiplicity for each element of simgrams and sums the smallest value *)
 List.fold_left (fun acc x ->
   if (multiplicity x s1 > multiplicity x s2)
    then multiplicity x s2 + acc
    else multiplicity x s1 + acc ) 0 simgrams

(* (s1 u s2) is s1 + s2 - (s1 n s2) for sets *)
let union_size s1 s2 = size s1 + size s2 - intersection_size s1 s2
(* Find the similarity of two sets *)
let similarity s1 s2 = float_of_int (intersection_size s1 s2) /. float_of_int (union_size s1 s2)

(* Find the most similar representative file *)
let find_max repsims repnames = if (repsims = [] || repnames = []) then (0.,"") else
let combined = List.combine repsims repnames in
(* Goes through each list and finds the largest match value *)
List.fold_left (fun (num,nam) x -> match x with (v,name) ->
if (v > num) then (v,name)
else if (v = num) then
  if (name < nam) then (v,name) (* Lexicographical sort *)
  else (num,nam)
else (num,nam)) (0.,"") combined


let main all replist_name target_name =
  (* Read the list of representative text files *)
  let repfile_list = file_lines ( replist_name ) in
  (* Get the contents of the repfiles and the target file as strings *)
  let rep_contents = List.rev_map (fun x -> file_as_string x) repfile_list in
  let target_contents = file_as_string ( target_name ) in
  (* Compute the list of normalized n-grams from each representative *)
  let rep_ngrams = List.rev_map (fun x -> n_grams x ) rep_contents in
  (* Convert the target text file into a list of normalized n-grams *)
  let target_ngrams = n_grams target_contents in
  (* Convert all of the stem lists into stem sets *)
  let rep_bags = List.rev_map (fun x -> bag_of_list x ) rep_ngrams in
  let target_bag =  bag_of_list target_ngrams in
  (* Compute the similarities of each rep set with the target set *)
  let repsims = List.rev_map (fun x -> (similarity x target_bag)) rep_bags in
  let (sim,best_rep) = find_max repsims repfile_list in
  let () = if all then
  (* print out similarities to all representative files *)
  let () =  print_endline "File\tSimilarity" in
  List.iter2 (fun x y -> print_endline (x^"\t"^string_of_float y) ) repfile_list repsims else begin
  (* Print out the winner and similarity *)
  let () = print_endline ("The most similar file to " ^ target_name ^ " was " ^ best_rep ) in
  print_endline ("Similarity: " ^ string_of_float sim)  end in
  (* this last line just makes sure the output prints before the program exits *)
  flush stdout
