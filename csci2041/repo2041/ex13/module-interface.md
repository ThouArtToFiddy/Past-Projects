1. `listSet.ml : sset.mli`
> Legal
>> listSet provides all types and values in the sset signature

2. `hashSet.ml : sset.mli`
> Not legal
>> Type error

3. `funSet.ml : sset.mli`
> Not legal
>> Missing some functions

4. `listSet.ml : rset.mli`
> Not legal
>> ListSet misses some functions in rset

5. `hashSet.ml : rset.mli`
> Not legal
>> hasSet misses some functions in rset

6. `funSet.ml : rset.mli`
> Legal
>> funSet contains all the functions in rset

7. `listSet.ml : fset.mli`
> Legal
>> listSet contains all the functions in fset

8. `hashSet.ml : fset.mli`
> Not Legal
>> type error

9. `funSet.ml : fset.mli`
> Not Legal
>> funSet is missing some functions in fset
