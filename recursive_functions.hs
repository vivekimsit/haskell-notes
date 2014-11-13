* Factorial
  **non-recursive**
  ```hs
  factorial :: Int -> Int
  factorial n = product [1..n]
  
  factorial 4
  = product [1..4]
  = product [1,2,3,4]
  = 1 * 2 * 3 * 4
  ```
  
  **recursive**
  ```hs
  factorial 0 = 1
  factorial n = n * factorial (n - 1)
  
  factorial 3
  = 3 * factorial 2
  = 3 * (2 * factorial 1)
  = 3 * (2 * (1 * factorial 0))
  = 3 * (2 * (1 * 1))
  ```
