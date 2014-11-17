##### Keep it DRY

A function is called higher order if it takes a function as an argument or returns a function as a result.
==============================================================
eg: 

  map - Maps a functions to all the elements of the collection
  ```hs
  map (+1) [1,3,5,7] = [2,4,6,8]
  
  -- List comprehension
  map f xs = [f x | x <- xs]
  
  -- Recursion
  map f []     = []
  map f (x:xs) = f x : map f xs
  ```
  
  filter - Takes a Boolean function and a list and returns a list.
  ```hs
  filter :: (a -> Bool) -> [a] -> [a]
  > filter even [1..10]
  [2,4,6,8,10]
  
  -- List comprehension
  filter p xs = [x | x <- xs, p x]
  
  -- Recursion
  filter p []     = []
  filter p (x:xs)
      | p x        = x : filter p xs
      | otherwise  = filter p xs
  ```
  
  
  twice - Takes a function as an argument.
  ```hs
  twice     :: (a -> a) -> a -> a
  twice f x = f (f x)
  ```
  
Why?
====

