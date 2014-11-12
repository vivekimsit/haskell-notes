### List are not arrays but linked list, hence we can't index it like arrays.


* Head
  * `head [1, 2, 3] = 1` 
* Tail (Remove the first element)
  * `tail [1, 2, 3] = [2, 3]` 
* Nth element
  * `[1, 2, 3] !! 1 = 2` (Linear time)
* First n elements
  * `take 2 [1, 2, 3] = [1, 2]`
* Drop first n elements
  * `drop 2 [1, 2, 3] = [3]`
* Length
  * `length [1, 2, 3] = 3` (Linear time)
* Sum
  * `sum [1, 2, 3] = 6`
* Product
  * `product [1, 2, 3] = 6`
* Append
  * `[1, 2, 3] + [4, 5] = [1, 2, 3, 4, 5]`
* Reverse
  * `reverse [1, 2, 3] = [3, 2, 1]`


### List comprehension (Mechanism to deal with collections)
Some collection types:

1. List comprehension. Eg: `{ x^2 | x e {1, 5}} == [x^2 | x <- [1..5]]`
 * `x <- [1..5] ` is a generator because it contains the rule for generating the values one by one.
 * A list comprehension can have multiple generators.
 
   eg: `[(x,y) | x <- [1,2,3], y <- [4,5]]`

       `[(1, 4), (1,5), (2,4), (2,5), (3,5), (3,5)]`
       
 * Changing the order of generators changes the order of the element in the list.
 * Guards
   
   List comprehension use Guards to limit the values produced by generators.

     eg: `[x | x <- [1..10], even x]` 
  
 * A string is a sequence of characters enclosed in double quotes. Internally they are represented as list of characters.
 
   `['a', 'b', 'c'] :: [Char]`
 
 More example:
 
 * concat

 ```hs
 concat :: [[a]] -> [a]
 concat xss = [x | xs <- xss, x <- xs]
 ```

 ```hs
 > concat [[1,2,3], [4,5], [6]]
 [1,2,3,4,5,6]
 ```
 
 * sorted
 
 ```hs
 sort :: Ord a => [a] -> Bool
 sort xs =
     and [x <= y | (x, y) <- pairs xs]
 ```

 ```hs
 > sorted [1, 2, 3, 4]
 True
 ```
 
 * positions
 
 ```hs
 positions :: Eq a => a -> [a] -> [Int]
 positions x xs =
     [i | (x', i) <- zip xs [0..n], x == x']
     where n = length xs - 1
 ```
 
 ```hs
 > positions 0 [1, 0, 0, 1, 0, 1, 1, 0]
 [0, 1, 2, 4, 7]
 ```
