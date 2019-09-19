type entity =
  Title of entity list
  | Heading of entity list
  | Text of string
  | Anchor of anchor
  | List of listtype * entity list
  | ListItem of entity list
and anchor = Named of string * (entity list) | HRef of string * (entity list)
and listtype = Ordered | Unordered

type document = { head : entity list ; body : entity list }

(* a few example documents *)
let d1 = { head = [(Title [(Text "cs2041.org")])] ;
	   body = [ (Heading [(Text "CS 2041 Document")]) ;
		    (Text "A short document") ;
		    (Anchor (Named ("here", []))) ;
		    (Text "A little more stuff") ;
		    (Anchor (HRef ("#here", [(Text "Click this to go back")]))) ] }

let d2 = { head = [(Title [(Text "github.umn.edu/cs2041-s19/labs2041-s19/lab2")])] ;
	   body = [ (Heading [(Text "Lab 2: Types, Patterns and Recursion")]) ;
		    (Text "Due dates and stuff.") ;
		    (Heading [(Text "Ground rules")]) ;
		    (Text "Work with a partner, and so on.") ;
		    (Heading [(Text "Goals for this lab")]) ;
        (List (Ordered, [
          (Text"apply type inference knowledge");
          (Text"see pattern matching examples");
          (Text"write recursive functions")]));
		    (Heading [(Text "Types and Type inference")]) ;
		    (Text "The rest of the lab gets boring quickly...") ] }

let d_err1 = { head = [(Anchor (Named ("notgood", [])))] ;
	       body = [(Text "But sort of boring.")] }

let d_err2 = { head = [] ;
	       body = [(Title [(Text "The Title doesn't go in the body!")])] }

let d_err3 = { head = [(Title [(Text "Title's where it goes but...")])] ;
	       body = [(Anchor (Named ("evenworse", [(Anchor (Named ("nested anchor!", [])))])))] }

(* Example of computing on a document *)
let check_rules { head ; body } =
  let rec check_head el = match el with
    | [] -> true
    | (Title el')::t | (Heading el')::t -> (check_head el') && (check_head t)
    | (Text _)::t -> check_head t
    | (Anchor _)::t -> false
    | _::t -> check_head t in
  let rec check_body el nest lst= match el with (* nest = are we inside an Anchor element? *)
    | [] -> true
    | (Title el')::t -> false
    | (Text _)::t -> check_body t nest lst
    | (Heading el')::t -> (check_body el' nest lst) && (check_body t nest lst)
    (* When we check the elements inside this anchor, set nest to true, but not in the tail*)
    | (Anchor (Named (_,el')))::t
    | (Anchor (HRef (_,el')))::t -> if nest then false else (check_body el' true lst) && (check_body t nest lst)
    | (List _)::t -> check_body t nest true
    | (ListItem _)::t -> if lst then check_body t nest lst else false in
  (* Initially, nest = false... *)
  (check_body body false false) && (check_head head)

let find_headings doc =
let rec helper1 lst = match lst with
| [] -> []
| Heading h ::t -> Heading h::helper1 t
| _ :: t -> helper1 t
in match doc with
| {head: entity list; body: entity list} -> helper1 head @ helper1 body

let extract_text doc =
let rec helper1 lst = match lst with
| [] -> ""
| Text h :: t -> h ^ " " ^ (helper1 t)
| Heading h :: t -> (helper1 h)  ^  (helper1 t)
| List (ty,h) :: t -> (helper1 h) ^ (helper1 t)
| ListItem h :: t -> (helper1 h) ^ (helper1 t)
| Title h :: t -> helper1 t
| Anchor a ::t-> match a with
  |Named (x, h) -> (helper1 h)  ^  (helper1 t)
  |HRef (x, h) -> (helper1 h)  ^ (helper1 t)
in match doc with
| {head: entity list; body: entity list} -> String.trim ((helper1 head) ^ (helper1 body))
