(* this line makes the lwt bind infix operator available in scope *)
open Lwt.Infix

(* the code to handle connection ending goes here: *)

(* Here, before echo_handler, is where we'll add the input line handler: *)
exception Quit

let close_channels cin cout = Lwt_io.close cin >>= fun () -> Lwt_io.close cout >>= fun () -> Lwt.fail Quit
let handle_input cin cout s = if "/q" = (Str.string_before s 2) then close_channels cin cout else Lwt_io.write_line cout s

let echo_handler client_addr (inp,outp) =
  let rec main_loop () =
    Lwt_io.read_line inp >>= fun l -> handle_input inp outp l >>= main_loop in
  Lwt.catch main_loop (fun e -> Lwt.return ())

let s = Lwt_io.establish_server_with_client_address (Unix.ADDR_INET(Unix.inet_addr_any, 16384)) echo_handler
let _ = Lwt_main.run (fst (Lwt.wait ()))
