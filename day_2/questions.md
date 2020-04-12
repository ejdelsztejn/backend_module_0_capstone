## Day 2 Questions

1. Create an array containing the following strings: `"zebra", "giraffe", "elephant"`.

   ```ruby
   ["zebra", "giraffe", "elephant"]
   ```

1. Save the array you created above to a variable `animals`.

   ```ruby
   animals = ["zebra", "giraffe", "elephant"]
   ```

1. Using the array `animals`, how would you access `"giraffe"`?

   ```ruby
   animals[1]
   ```

1. How would you add `"lion"` to the `animals` array?

   ```ruby
   animals.push("lion")
   ```

1. Name and describe two additional array methods:

   `Array#map`  is a method that iterates over an array, allows us to do something for every element of the array, and returns a new array based on the block’s return value. Each element is transformed based on the return value. In this example:

   ```ruby
   [1, 2, 3].map { |num| num * 2 }
   ```

   the block's return value would be the value of each element itself  multiplied by 2 (`num * 2`).  The return value would be the new array with values `[2, 4, 6]`.

   `Array#sample` returns a random element or elements from the given array.   The return value of the method is the random element or elements.  

   If `sample` is called on an empty array, it will return `nil`.  If `sample(n)` is called it will return the empty array (`[]`).

1. What are the boolean values in Ruby?

   The boolean values in Ruby are `true` and `false`.

1. In Ruby, how would you evaluate if `2` is equal to `25`? What is the result of this evaluation?

   We could evaluate if `2` is equal to `25` by writing `2 == 25`.  The return value of this evaluation would be `false`.

1. In Ruby, how would you evaluate if `25` is greater than `2`? What is the result of this evaluation?

   We could evaluate if `25` is greater than `2` by writing `25 > 2`.  The return value of this evaluation is `true`.
