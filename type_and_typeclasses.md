### Types, composing types and type classes.
##### Type variable must begin with a lowercase `[a]` letter and concrete types with uppercase letter `[Int]`.
  - `length :: [a] -> Int`
  - `fst :: (a, b) -> a `

- Every well formed expression has a type and that is calculated by compiler by a process called **type inference**. Hence, all type errors are found at compile time which makes the program safer and faster by removing run time type check overhead.
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
    A polymorphic function is called **overloaded** if its type contains one or more class constraints.
    
    eg: `sum :: Num => [a] -> a` i.e. a instance should implement a particular interface.

* Type classes (Analogous to an interface)
  1. `Num` - Numeric types
  
    `(+) :: Num a => a -> a -> a`
  2. `Eq`  - Equality types
  
    `(==) :: Eq a => a -> a -> Bool`
  3. `Ord` - Ordered types
  
    `(<) :: Ord a => a -> a -> Bool`

Declaring Type and Type Classes
===============================

######Type Synonyms
  
  - `type String = [Char]`
  - `type Pos = (Int, Int)`
  - `type Pair a = (a, a)`
  - `data Bool = True | False` (Analogy, Type extends Bool and Bool is a abstract base class)
  - `data Answer = Yes | No | Unknown` User defines type
