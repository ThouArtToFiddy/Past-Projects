(* hostinfo, the "name" of a computer connected to the Internet *)
type hostinfo = IP of int*int*int*int | DNSName of string

(* Here's where your definition of tld goes: *)
let tld (addr : hostinfo) : string option = match addr with
| IP _ -> None             (*Not sure why putting + 1 here v does not work *)
| DNSName s -> let str = String.sub s (String.rindex s '.') (String.length s - String.rindex s '.') in
Some (String.sub str 1 ((String.length str) - 1))
