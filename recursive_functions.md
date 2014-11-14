1. Factorial

 **non-recursive**
  ```hs
  factorial   :: Int -> Int
  factorial n = product [1..n]
  
  factorial 4
  = product [1..4]
  = product [1,2,3,4]
  = 1 * 2 * 3 * 4
  = 24
  ```
  
 **recursive**
  ```hs
  factorial   :: Int -> Int
  factorial 0 = 1
  factorial n = n * factorial (n - 1)
  
  factorial 3
  = 3 * factorial 2
  = 3 * (2 * factorial 1)
  = 3 * (2 * (1 * factorial 0))
  = 3 * (2 * (1 * 1))
  = 3 * (2 * 1)
  = 3 * 2
  = 6
  ```
  
2. Length

 ```hs
 length        :: [a] -> Int
 length []     = 0
 length (_:xs) = 1 + length xs
 
 length [1,2,3]
 = 1 + length [2,3]
 = 1 + (1 + length [3])
 = 1 + (1 + (1 + length []))
 = 1 + (1 + (1 + 0))
 = 1 + (1 + 1)
 = 1 + 2
 = 3
 ```

3. Quicksort
  * The empty list is already sorted.
  * Sort the tail values <= head and tail values > head.
  
  ```hs
  qsort        :: [Int] -> [Int]
  qsort []     = []
  qsort (x:xs) =
      qsort smaller ++ [x] ++ qsort larger
      where
          smaller = [a | a <- xs, a <= x]
          larger  = [b | b <- xs, b > x]
          
          
                              qsort [3,2,1,4,5]
  
                      qsort [2,1] ++ [3] ++ qsort [4,5]
                  
        qsort [1] ++ [2] ++ qsort [] ++ [3] ++ qsort [] ++ [4] ++ qsort [5]
        
                  [1] ++ [2] ++ [] ++ [3] ++ [] ++ [4] ++ [5]  
                  
                                  [1,2,3,4,5]
  ```
