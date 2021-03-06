In haskell functions taks only one argument at a time.
  eg:
  ```hs
  f 3 4 == (f 3) 4 --(f 3) is a function
  f:: Num a => a -> a -> a
  
  g:: Num a => a -> a
  g = f 3
  g y = 3*3 + y*y <=> g = \y -> 3*3 + y*y
  ```

1. ###### Conditional expression

  In haskell there is no conditional statement like Java etc. hence it has only conditional expressions.
  
  `if condition then expression else expression`
  
  eg:
  ```hs
  abs :: Int -> Int
  abs n = if n >= 0 then n else -n
  ```

2. ###### Guard statement

  Alternative way to define function definition starting with conditonal expression.
  
  eg:
  ```hs
  abs :: Int -> Int
  abs n | n >= 0     = n
        | otherwise  = -n
  ```

3. ###### Pattern matching

  eg:
  ```hs
  not :: Bool -> Bool
  not False =  True
  not True = False
  ```
4. ###### Lambda expression (Anonymous function)
  
  eg: `\x -> x + x`

  ```hs
  add x y = x + y
  add x y = \x -> (\y -> x + y)
  ```
  
  constant function
  ```hs
  const   :: a -> (b -> a)
  const x :: \_ -> x
  ```
  
5. ###### Sections
  
  Taking a binary / infix operator and then using that as a functions.

  eg: `1 + 2 == (+) 1 2 == (1 +) 2 == (+ 2) 1 == 3`
  
  More examples:
  ```hs
  (1 +) - successor function
  (1 /) - reciprocation function
  (* 2) - doubling function
  (/ 2) - halving function
  ```
