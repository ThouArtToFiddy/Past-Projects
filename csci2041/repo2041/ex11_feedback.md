### Feedback for Exercise set 11

Run on April 15, 22:19:07 PM.

+ Pass: Change into directory "ex11".

+ Pass: Check that file "intereval.md" exists.

+ Pass: Item 1 of list in intereval.md passes execution 1 state result test

+ Pass: Item 2 of list in intereval.md passes execution 2 state result test

+ Pass: Item 3 of list in intereval.md passes execution 3 state result test

+ Pass: Item 4 of list in intereval.md passes execution 4 state result test

+ Pass: Check that file "interleaved.ml" exists.

+ Pass: thread2 has expected type and output

+ Pass: thread3 has expected type and output

+ Pass: dprint has expected type and output

+ Pass: make_t has expected type and output

+ Pass: Check that file "philosophers.ml" exists.

+ Pass: philosopher has correct type

+ Fail: philosopher did not produce expected output with no locks:
        
actual:
```Socrates got left chopstick!
Socrates got right chopstick!, eating!
Socrates all done eating!
```

        
expected:
```Socrates got left chopstick!
Socrates got right chopstick, eating!
Socrates all done eating!
```
        

+ Pass: philosopher behaved as expected with m1 locked

+ Pass: philosopher behaved as expected with m2 locked

+ Fail: Compile or type error: 

  RAN: '/soft/ocaml-4.06.0/Linux_x86_64/opam/system/bin/ocamlfind ocamlc -package lwt -package lwt.unix -linkpkg philosophers.ml tphil.ml -o tph'

  STDOUT:


  STDERR:
File "tphil.ml", line 1, characters 67-91:
Error: Unbound value Philosophers.polite_phil


+ Fail: Compile or type error: 

  RAN: '/soft/ocaml-4.06.0/Linux_x86_64/opam/system/bin/ocamlfind ocamlc -package lwt -package lwt.unix -linkpkg philosophers.ml tphil.ml -o tph'

  STDOUT:


  STDERR:
File "tphil.ml", line 1, characters 67-91:
Error: Unbound value Philosophers.polite_phil


+ Fail: Compile or type error: 

  RAN: '/soft/ocaml-4.06.0/Linux_x86_64/opam/system/bin/ocamlfind ocamlc -package lwt -package lwt.unix -linkpkg philosophers.ml tphil.ml -o tph'

  STDOUT:


  STDERR:
File "tphil.ml", line 1, characters 67-91:
Error: Unbound value Philosophers.polite_phil


+ Fail: Compile or type error: 

  RAN: '/soft/ocaml-4.06.0/Linux_x86_64/opam/system/bin/ocamlfind ocamlc -package lwt -package lwt.unix -linkpkg philosophers.ml tphil.ml -o tph'

  STDOUT:


  STDERR:
File "tphil.ml", line 1, characters 67-91:
Error: Unbound value Philosophers.polite_phil


