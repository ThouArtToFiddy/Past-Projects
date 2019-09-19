# Lab 11: Concurrent Programs

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Thursday, April 18 at 11:59pm.

## Ground rules

You may choose to work alone or with a partner on this lab. If you choose to work in a group, follow these [group instructions](group-instructions.md) to set up a group repository, and use that repository to store your work in this lab.

Although labs are meant to be an open and collaborative environment, it is the
responsibility of all partners to contribute to learning the materials in every
lab. In particular, all partners are responsible for ensuring that submissions
are received by the due date.

As will be the case for all labs this semester, your work should appear in a directory called `lab11` of your personal or group repository.  The easiest way to accomplish this is to do a `git pull` in the public `labs2041-s19` repository to get the lab files, then do a recursive copy to copy the entire `lab11` folder into the destination repository:

```
% cd ~/csci2041/labs2041-s19
% git pull
% cd ..
% cp -R labs2041-s19/lab11 repo-dest1234/
% cd repo-dest1234/
% git add lab11
```



# Introduction: Goals for this lab

+ See and work through some examples using the `Lwt` concurrency library

+ Learn a little about internet protocol "servers."

## Answering the questions in this lab

Create a `lab11` directory in your team repository and copy the files
`threadBasics.ml` and `echoSrv.ml` to this directory; we'll work with
the contents of these files in the following sections.

## Fun with Threads

In this lab we'll be working with the `Lwt` concurrency library; if you haven't
yet, please read the short intro [here](lwt_intro.md).

### Time to write a bit of `Lwt` code

In `threadBasics.ml` let's create a program that has two threads of execution:

+ The first thread is created by a function `snooze : float -> unit ->
  unit Lwt.t`.  `(snooze s ())` should sleep for `s` seconds, print an
  alarm message of your choosing (e.g. "WAKE UP YOU NEED TO MAKE
  MONEY" or "wake up, buttercup!" or "rise and shine!") and then
  `(snooze s)` again.  (`Lwt_unix.sleep` and `Lwt_io.printl` will be
  useful here)

+ The second thread is created by a function `pick_out : (int*bool)
  list -> unit Lwt.t`.  This function creates a thread that iterates
  through a list of `(i,b)` pairs in order and prints out the integer values
  associated with `true`.  The function `Lwt_list.iter_s` will be
  useful here.

`threadBasics.ml` includes some code that starts these threads and
waits for both to complete (although this never happens...)

You can test out the program by building with `ocamlfind ocamlc -o threadBasics -package
lwt -package lwt.unix -linkpkg threadBasics.ml` and running `./threadBasics`.

## Is there an echo in here?

One of the standard "hello world" examples for a concurrency library is
an *echo server*: a program that listens for network connections,
accepts any incoming connection, and then repeats back (or "echoes")
whatever input it receives.  The file `echoSrv.ml` contains a very
basic echo server example using `Lwt`.  Line 10 kicks things off by
asking `Lwt` to open a *socket*, an OS abstraction that allows a
program to treat a network connection as if it were a file, on the
network address (`Unix.inet_addr_any`) of the machine the program is
run on, listening to the *port* 16384.

> Ports are 16-bit addresses given to programs running on a particular
> computer by the Internet Protocol; a program may request any address
> at all from the operating system, but usually port numbers less than
> 1024 are reserved for OS services and won't be granted; and requests
> for a port that is already in use by another application will also
> fail.  If you run the echo server and get an exception it might be
> for this reason; go ahead and replace 16384 by another number
> between 1025 and 65535 in the code and the rest of this section.

When another program (either on the same computer or another
Internet-connected computer) requests a connection to port 16384, the
`Lwt.establish_server_with_client_address` function calls its second argument (in this
case `echo_handler`) with an address and a pair of channels; the first channel is an
input channel and will read any data sent to the program over the
network, and the second is an output channel and any data written to
it will be sent over the network to the other program.

The `echo_handler` function starts a
thread (by calling the local function `main_loop`)
that just reads data one line at a time from the input
channel and writes ("echoes") that data back to the output channel.

This continues until the network connection is closed, which causes an
exception to be thrown when `main_loop` tries to read or write to the
channels.  Since `main_loop` is called by `catch`, the exception will
be handled by calling the second argument to `Lwt.catch` with the
exception as an argument (And being a minimal echo server, the handler
here just ignores the exception and returns with `Lwt.return ()`)

You can test out the echo server by opening two terminal windows:

+ In the first terminal window cd to your `lab11` directory, then build the server and start it up:

    ```
    user1234@host (../lab11) % ocamlfind ocamlc -o echoSrv -package lwt -package lwt.unix -linkpkg echoSrv.ml
    user1234@host (../lab11) % ./echoSrv
    ```

+ In the second terminal window, after starting the echo server, you
  can connect to it using `nc`, which is an application that reads
  line input from the terminal and sends it over a network connection,
  while also printing any data it receives from the network
  connection.  `nc` takes a host name or IP address to connect to
  and a port number as command line arguments.  We'll use `localhost`
  which is always a valid host name for the computer a program is
  running on and 16384, the port the echo server listens on:

    ```
    user1234@host (/home/user1234) % nc localhost 16384
    Some stuff I typed in just now.
    Some stuff I typed in just now.
    More stuff.
    More stuff.
    After this line, I'll type control-C to quit the nc application
    After this line, I'll type control-C to quit the nc application
    ^C
    user1234@host (/home/user1234) %
    ```

    Don't forget to kill the server in the first terminal window by typing control-C.

### Modifying the server

While there's nothing _wrong_ with the design of the minimal echo
server, being minimal, typical network applications have a protocol
where the client and server agree that a connection has ended before
closing the connection.  Let's modify `echoSrv.ml` to allow the user
to indicate her intent to close the connection by entering a line that
starts with `/q`:

+ Add a new exception, `Quit`, to `echoSrv.ml`.

+ Add a new function to `echoSrv.ml`, `close_channels :
  Lwt_io.input_channel -> Lwt_io.output_channel -> 'a Lwt.t`.  This
  function will create a thread that closes its first argument (using `Lwt_io.close`), then
  closes its second argument, then exits the thread by raising
  the `Quit` exception using `Lwt.fail`.  (Due to the implementation
  of exception handling in `Lwt`, exceptions inside threads should be
  raised by calling `Lwt.fail E` and not `raise E`.)

+ Add a new function to `echoSrv.ml`,
  `handle_input : Lwt_io.input_channel -> Lwt_io.output_channel -> string -> unit Lwt.t` that will take the input and output channels and the next line of input, check if the input line starts with `/q`,
  and take appropriate action (either close the network connection or write
  the line to `outp`).  One way to handle this check is using the
  `Str.string_before` function; feel free to do so, but remember
  you'll need to include `str.cma` as an argument to `ocamlfind` (after `-linkpkg` and before `echoSrv.ml`)
  when building your program.

+ Modify `main_loop` to bind `handle_input inp outp` to the result of
  `Lwt_io.read_line` instead of the `write_line` thread.

You can test out your modified echo server as above.  (Feel free to
insert your own cheesy dialog with your workstation)

# Commit and push so that everything is up on GitHub

Now you need to just turn in your work. Commit your `threadBasics.ml`
and `echoSrv.ml` files and push them up to your central GitHub repository.

Verify that this worked, by using your browser to see the changes on
https://github.umn.edu.

If you do not properly push your changes to the repository we
cannot give you credit for the lab, so please remember to do this
step!

__This concludes lab 11.__

**Due:** Thursday, April 18 at 11:59pm.

Note that any required changes must exist in your repository on
github.umn.edu. Doing the work but failing to push those changes
to your central repository will mean that we cannot see your work
and hence can't grade it.
