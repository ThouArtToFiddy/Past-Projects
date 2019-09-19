(*I added in the ability to whisper to other users by using the syntax
 /w (receipient) msg
 I also added in some error handling cases for when the /w is used incorrectly
 or when the receipient is an invalid nick.

 The code does not use any other extra libraries/modules
 ocamlfind ocamlc -package lwt -package lwt.unix -linkpkg -o server str.cma funSrv.ml funSrvMain.ml

*)



open Lwt.Infix

(* a list associating user nicknames to the output channels that write to their connections *)
(* Once we fix the other functions this should change to []*)
let sessions = ref []
let m1 = Lwt_mutex.create ()
exception Quit

(* replace Lwt.return below with code that uses Lwt_list.iter_p to
  print sender: msg on each output channel (excluding the sender's)*)
  let rec send_all sender msg = Lwt_list.iter_p (fun x -> match x with (name, output) ->
  if (String.compare name sender =0) then Lwt.return ()
  else Lwt_io.write_line output (sender^": "^msg)) (!sessions)

let private_msg sender receipient msg =
Lwt_io.write_line (List.assoc receipient !sessions) ("<from> "^sender^":"^msg) >>=
fun () -> Lwt_io.write_line (List.assoc sender !sessions) ("<to> "^receipient^":"^msg)

(* remove a session from the list of sessions: important so we don't try to
   write to a closed connection *)
let remove_session nn =
  sessions := List.remove_assoc nn !sessions;
  send_all nn "<left chat>" >>= fun () ->
  Lwt.return ()

(* Modify to handle the "Quit" case separately, closing the channels before removing the session *)
let handle_error e nn inp outp = match e with
| Quit -> Lwt_io.close inp >>= fun () -> Lwt_io.close outp >>= fun () -> remove_session nn
| _ -> remove_session nn

(* modify sessions to remove (nn,outp) association, add (new_nn,outp) association.
   also notify other participants of new nickname *)
let change_nn nn outp new_nn =
Lwt_mutex.lock m1 >>= fun () ->
send_all nn ("<changed nick to "^new_nn^">") >>= fun () ->
sessions := List.remove_assoc nn (!sessions); sessions := (new_nn, outp)::(!sessions) ;  Lwt.return (Lwt_mutex.unlock m1)

(*  + obtain initial nick(name),
    + add (nick,outp) to !sessions, and
    + announce join to other users *)
let handle_login nr (inp,outp) =

  Lwt_io.write_line outp ("Enter initial nick:") >>=
    fun () -> Lwt_io.read_line (inp) >>=
    fun nick -> nr := nick ;
     Lwt_mutex.lock m1 >>=
    fun () -> sessions := ((!nr, outp)::(!sessions)) ;
    Lwt_mutex.unlock m1 ;
    send_all (!nr) "<joined>"

(* modify handle_input below to detect /q, /n, and /l commands *)
let handle_input nr outp l =
try (match String.sub l 0 2 with  (*try with for when message shorter than 2*)
| "/q" -> Lwt.fail Quit
| "/n" -> change_nn !nr outp ( Str.string_after l 3) >>= fun () -> Lwt.return (nr := ( Str.string_after l 3))
| "/l" -> Lwt_list.iter_s (fun x -> match x with (name, output) -> Lwt_io.write_line outp name ) (!sessions)
| "/w" ->(
  try (
  let next = Str.string_after l 3 in
  let receipient = String.sub next 1 (String.index next ')' - 1) in
  let msg = Str.string_after next (String.length receipient + 2) in
  Lwt_io.write_line outp ("receipient: "^receipient) >>= fun () ->
  private_msg !nr receipient msg)
  with
    | Not_found -> Lwt_io.write_line outp ("invalid receipient or missing ()")
    | e -> Lwt_io.write_line outp ("enter more arguments"))
| _ -> send_all !nr l)
with | _ -> send_all !nr l

let chat_server _ (inp,outp) =

  let nick = ref "" in
  (* replace () below with call to handle_login *)
  let _ = handle_login nick (inp,outp) in
  let rec main_loop () =
	  Lwt_io.read_line inp >>= handle_input nick outp >>= main_loop in
  Lwt.catch main_loop (fun e -> handle_error e !nick inp outp)
