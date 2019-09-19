open Lwt.Infix

let slp () = Lwt_unix.sleep (Random.float 0.001)
