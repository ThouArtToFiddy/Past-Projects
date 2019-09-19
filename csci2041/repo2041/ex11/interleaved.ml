open Lwt.Infix

let thread1 () = Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.read(y)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.write(x,y)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.read(x)" >>=
  fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
  fun () -> Lwt_io.printl "t1.write(y,x+y)"

  let thread2 () =  Lwt_unix.sleep (Random.float 1e-3) >>=
    fun () -> Lwt_io.printl "t2.write(y,1)" >>=
    fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
    fun () -> Lwt_io.printl "t2.read(x)" >>=
    fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
    fun () -> Lwt_io.printl "t2.write(y,x+100)"

  let thread3 () = Lwt_unix.sleep (Random.float 1e-3) >>=
    fun () -> Lwt_io.printl "t3.read(x)" >>=
    fun () -> Lwt_unix.sleep (Random.float 1e-3) >>=
    fun () -> Lwt_io.printl "t3.write(x,x*10)"

let dprint tname action = Lwt_unix.sleep(Random.float 1e-3) >>= fun() -> Lwt_io.printl (tname^"."^action)



let make_t tname actionlst = Lwt_list.iter_s (dprint tname) actionlst
