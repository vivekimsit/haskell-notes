##### Keep it DRY

### A function is called higher order if it takes a function as an argument or returns a function as a result.
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

Foldr
=====

It follows the following pattern of recursion over a list:

```hs
f []     = v
f (x:xs) = x op f xs

foldr            :: (a -> b -> b) -> b -> [a] -> b
foldr f v []     = v
foldr f v (x:xs) = f x (foldr f v xs)

-- It is best to think foldr non-recursively as simultaneously replacing 
-- each (:) in a list by a given function, and [] by a given value.

sum [1,2,3]
= foldr (+) 0 [1,2,3]
= foldr (+) 0 (1:(2:(3:[]))) -- like the visitor pattern replace the constructor by the function
= 1+(2+(3+0))
= 6

length        :: [a] -> Int
length []     = 0
length (_:xs) = 1 + length xs

length [1,2,3]
= length (1:(2:(3:[])))
= (1+(1+(1+0)))
= 3

-- By foldr
length  = foldr (\x_n -> 1 + n) 0

reverse []     = []
reverse (x:xs) = reverse xs ++ [x]

reverse [1,2,3]
= reverse (1:(2:(3:[])))
= (([] ++ [3]) ++ [2]) ++ [1]
= [3,2,1]

-- By foldr
reverse = foldr (\x xs -> xs ++ [x]) []

```
**f is a homomorphism over the list i.e. it maintains the structure of the list**

Examples:

```hs
sum []     = 0
sum (x:xs) = x + sum xs

product []     = 1
product (x:xs) = x * product xs

and []     = True
and (x:xs) = x && and xs
```

Why?
====

