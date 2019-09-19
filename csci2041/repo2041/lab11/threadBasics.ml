(* Lab 11 thread "basics" *)
(* This line makes the lwt infix operators available in scope: *)
open Lwt

(* here's where your definition of snooze goes.  Replace Lwt.return () with the right code *)
let rec snooze s () = Lwt_unix.sleep s >>= fun () -> Lwt_io.printl ("WAKE UP YOU NEED TO MAKE MONEY") >>= snooze s 

(* And your definition of pick_out*)
let rec pick_out l = Lwt_list.iter_s (fun x -> match x with (i,b) -> if b then Lwt_io.printl (string_of_int i) else Lwt.return ()) l

let rec input_list n l = if n = 0 then l else input_list (n-1) ((n, (63*n + 8241 mod 65537) = 0)::l)
let _ = Lwt_main.run (Lwt.join [(Lwt.pause () >>= (snooze 5.0)) ; (pick_out (input_list (1 lsl 25) []))])
