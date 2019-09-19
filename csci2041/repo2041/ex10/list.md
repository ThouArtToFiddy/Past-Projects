# `length (append l1 l2) = (length l1) + (length l2)`

### Property
P(l) ∀l2 : 'a list, length (append l l2) = (length l) + (length l2)

### Base Case
P([]): length (append [] l2) = (length []) + length (l2)
≡ length (l2) = 0 + length (l2) [by eval of append and length]
≡ length l2 = length l2 ✓

### Inductive Case
Vl : 'a list. length (append l l2) = (length l) + (length l2) => length (append x::l l2) = (length x::l) + (length l2)

#### IH
Vl. length (append l l2) = (length l) + (length l2)

length (append x::l l2) = (length x::l) + (length l2)
≡ length (append x::l l2) = 1 + (length l) + (length l2) [eval length]
≡ length (x::(append l l2)) = 1 + (length l) + (length l2) [eval of append]
≡ 1 + length (append l l2) = 1 + (length l) + (length l2) [eval of length]
≡ 1 + (length l) + (length l2) = 1 + (length l) + (length l2) ✓ [by I.H.]

# `mem x (append l1 l2) = (mem x l1) || (mem x l2)`

### Property
P(x) ∀l1 : 'a list, ∀l2 : 'a list, mem x (append l1 l2) = (mem x l1) || (mem x l2)

### Base Case
P([]): mem x (append [] l2) = (mem x []) || (mem x l2)
≡ mem x (append [] l2) = mem x l2 [eval of mem]
≡ mem x l2 = mem x l2 ✓ [eval of append]

### Inductive Case
Vl. mem x (append l l2) = (mem x l) || (mem x l2) => mem x (append (h::l) l2) = (mem x (h::l)) || (mem x l2)

#### IH:
mem x (append l l2) = (mem x l) || (mem x l2)

mem x (append (h::l) l2) = (mem x (h::l)) || (mem x l2)
≡ mem x (h::(append l l2)) = (mem x (h::l)) || (mem x l2) [eval of append]
≡ (x = h) || mem x (append l l2) = (mem x (h::l)) || (mem x l2) [eval of mem]
≡ (x = h) || (mem x l) || (mem x l2) = (mem x (h::l)) || (mem x l2) [by I.H.]
≡ (x = h) || (mem x l) || (mem x l2) = (x = h) || (mem x l) || (mem x l2) ✓ [eval of mem]
# `length (shift_right l) = (length l)`

### Property

### Base Case

### Inductive Case

#### IH: forall l2... put the rest here.
# `sum (shift_right l) = sum l`
### Property

### Base Case

### Inductive Case

#### IH: forall l2... put the rest here.
