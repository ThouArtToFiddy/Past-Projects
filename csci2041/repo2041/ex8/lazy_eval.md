1. 'take 2 (squares 3)'
Normal Form
[9; 16]
The argument to take decreases in each evaluation until it reaches 0, at which point we don't need to evaluate any further terms of (squares 3)

2. 'fold_right (&&) (map ((<) 0) (squares 2)) true'
Never
Every element of (squares 2) is positive, so every term of the map will evaluate to "true" and we'll never reach [].

3. 'fold_right (||) (map (fun n -> n mod 3 = 0) (factorials ())) false'
Normal Form
true
When it hits the third iteration it will be 6 which will be true and or true will always be true

4. 'take (sum_list (squares 1)) (factorials ())'
Never
sum_list squares 1 will be infinite

5. 'take 1 (reverse (squares 2))'
Never
Squares will keep on going and reverse wont ever get called

6. 'fold_right (+) (take 1 (factorials ())) 0'
Normal Form
1
Factorials will run once and get 1 taken, gets folded with + 0

7. '(fun x -> if false then x else ()) (flip 0 0)'
Normal Form
0
Will take in 0 result in 0
