### Types, composing types and type classes.

- Every well formed expression has a type and that is calculated by compiler by a process called **type inference**.
- Hence, all type errors are found at compile time which makes the program safer and faster by removing run time type check overhead.
- in GHCi `:type` calculates the type of an expression without evaluating it.

* Types (Base)
  1. `Bool: {True, False}`
  2. `Char`
  3. `String`
  4. `Int`
  5. `Integer`
  6. `Float`
  
* List (Generic/Polymorphic type)
  * `[False, True, False] :: [Bool]`
  * `['a', 'b', 'c'] :: [Char]`
  * `[['a'], ['b, c']] :: [[Char]]`

* Tuple (Sequence of different types)
  * `(False, True) :: (Bool, Bool)`
  * `(False, True, False) :: (Bool, Bool, Bool)`
  * `('a', (False, 'b')) :: (Char, (Bool, Char))`
  
* Function (Mapping from value of one type to the value of another type)
  * `not :: Bool -> Bool`
  * `add :: (Int, Int) -> Int` eg: add (x, y) = x + y
  
  ###### Function that takes arguments one by one are called curried functions.
  eg: 
    ```hs
    mult :: Int -> (Int -> (Int -> Int))
    mult x y x = x * y * z
    ```
  ###### Why curried function are more flexible than function applied on tuples?
  
  ###### Overloaded Function
