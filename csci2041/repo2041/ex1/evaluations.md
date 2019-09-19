1. 3 - 2 + 4
Legal
type: int
value: 5

2. 3.14 * 6 * 6
Not legal
3.14 is a float, while the * operator is for ints only

3. if 1 then 3 else 4
Not legal
1 is not a boolean

4. if 1 > 0 then 1 else "no"
Not legal
1 is a int, while "no" is type string

5. let x = 42 in 42 + y
Not legal
y was not defined

6. let circ d = 3.14 *. d in circ 4
Not legal
*. operator cannot be used on 4, which is an integer

7. let circ d = 3.14 *. d in circ, 4.0
Legal
type: float
value: 12.56

8. let x = 2 in let y = x + 3 in let x = y + x in x
Legal
type: int
value: 7

9. let z z = z ^ "z" in z "cheez"
Legal
type: string
value: "cheezz"

10. let x = "one" in let y = 1,x in let x = 2 in y+x
Not legal
string cannot be added with int
