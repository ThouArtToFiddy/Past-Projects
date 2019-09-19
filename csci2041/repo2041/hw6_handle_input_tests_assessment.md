## Assessment for HW6 handle_input_tests

Run on April 27, 00:27:43 AM.

+ Pass: Change into directory "hw6".

## Feedback Tests (total possible value: 15)

+  _2.5_ / _2.5_ : Pass: handle_input correctly raises Quit on /q

+  _2.5_ / _2.5_ : Pass: handle_input correctly handles /l

+  _2.5_ / _2.5_ : Pass: handle_input prints correct output when b says "/n c"

+  _2.5_ / _2.5_ : Pass: handle_input correctly updates nick reference on /n c

+  _2.5_ / _2.5_ : Pass: handle_input correctly removes old nick from sessions on /n

+  _2.5_ / _2.5_ : Pass: handle_input correctly adds new nick to sessions on /n

#### Subtotal: _15.0_ / _15.0_

## Manual tests entered by TA: yuanx254

+  _4_ / _5.0_ : Pass: 
    Overall implementation of function `handle_input_tests`
    
    
     Score (out of 5.0): 4


+ Pass: Other Stylistic Comments & Feedback

    remove_session should grab the global mutex before modifying the shared sessions list. Otherwise, looks good.

#### Subtotal: _4_ / _5.0_

