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
  ```
  not :: Bool -> Bool
  not False =  True
  not True = False
  ```
