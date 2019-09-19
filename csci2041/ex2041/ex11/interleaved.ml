open Lwt.Infix

let thread1 () = Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.read(y)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.write(x,y)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.read(x)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.write(y,x+y)"
