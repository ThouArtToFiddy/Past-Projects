open Lwt.Infix

let slp () = Lwt_unix.sleep (Random.float 0.001)

let philosopher name left right = slp()
>>= fun () -> Lwt_mutex.lock left
>>= fun () -> Lwt_io.printl (name^" got left chopstick!")
>>= fun () -> slp()
>>= fun () -> Lwt_mutex.lock right
>>= fun () -> Lwt_io.printl (name^" got right chopstick!, eating!")
>>= fun () -> slp()
>>= fun () -> Lwt_io.printl (name^" all done eating!")
>>= fun () -> Lwt.return (Lwt_mutex.unlock left)
>>= fun () -> Lwt.return (Lwt_mutex.unlock right)

let rec polite_phil name left right =
Lwt_unix.sleep (Random.float 1e-3)
>>= fun () -> Lwt_mutex.lock left
>>= fun () -> Lwt_io.printl (name^" got left chopstick!")
>>= fun () -> slp()
>>= fun () ->
if Lwt_mutex.is_locked right
then Lwt.return(Lwt_mutex.unlock left)
  >>= fun () -> Lwt_io.printl (name^" can wait (sign)...")
  >>= fun () -> slp()
  >>= fun () -> polite_phil name left right
else Lwt_mutex.lock right
  >>= fun () -> Lwt_io.printl (name^" got right chopstick!, eating!")
  >>= fun () -> slp()
  >>= fun () -> Lwt_io.printl (name^" all done eating!")
  >>= fun () -> Lwt.return (Lwt_mutex.unlock left)
  >>= fun () -> Lwt.return (Lwt_mutex.unlock right)
