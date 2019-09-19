1. `module A`
> Not Legal
>> The value `x` has mismatched types in the signature and struct

2. `module B`
> Legal
>> the value `b` has matching type in the signature and struct

3. `module c`
> Not legal
>> the name of the module c is lower case, which is a syntax error for modules

4. `module D`
> Legal
>> f and g has the correct types

5. `let module E = ...`
> Legal
>> E.e retrieves the stored value of e in E

6. `let module F : sig ...`
> Not Legal
>> type t does not have the int type, have to use with type t = int

7. `module type GaSig`
> Legal
>> includes valid modules

8. `module type HSig`
> Not legal
>> can't use let with modules
