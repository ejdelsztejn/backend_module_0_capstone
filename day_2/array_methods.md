## Array Methods

1. `Array#sort`

   `Array#sort` organizes elements in an array by comparing how elements are implemented using the spaceship operator (`<=>`), and then returns a new array with the sorted elements.

   The spaceship operator returns `1`, `0`, or `−1` depending on the value of the left argument relative to the right argument. Let's say that the left argument is variable `a` and the right argument is variable `b`: if `a` > `b`, then `a <=> b` returns `1`; if `a` = `b`, then `a <=> b` returns `0`; if `a` < `b`, then `a <=> b` returns `-1`.  

   `Array#sort` returns a new array in which each element has been compared using from left-to-right using `<=>`.  It will return strings in alphabetical order (based on ASCII encoding) and it will return numbers by ascending numerical value.

2. `Array#each`

   `Array#each` is a method that iterates over an array, allows us to do something for every element of the array, and returns the original array. For example, if we invoke `each` on an array of strings, and pass it a block as an argument in which we invoke `puts string`, `each` will call the block once for each element in the array, and pass the element into the block as an argument. In this case, it will output each string to the console during each iteration until it has iterated through every element in the array. The return value will be the original array.

3. `Array#join`

   `Array#join` converts each element of an array to a string, separated by the separator passed to `join` as an argument, and returns a string.  If both the separator and `$` are `nil`, the separator used is an empty string.

   Examples:

   ```ruby
   >> ['a', 'b', 'c', 'd'].join
   => "abcd"
   >> ['a', 'b', 'c', 'd'].join(', ')
   => "a, b, c, d"
   >> ['a', 'b', 'c', 'd'].join('*')
   => "a*b*c*d"
   ```

4. `Array#index`

   `Array#index` returns the index of the first object in the given array that is equal to the object passed to `index` as an argument.  If a block is passed to the method, `index` returns the first object in the given array for which the block returns `true`.  If no match is found, it returns `nil`.

   Examples:

   ```ruby
   >> langs = ["ruby", "javascript", "python", "c++"]
   >> langs.index("c++")														=> 3
   >> langs.index("java")													=> nil
   >> langs.index {|lang| lang.include?("r")}			=> 0
   ```

5. `Array#include?`

   `Array#include?` returns `true` if object passed as an argument is present as an element in the given array.

   Examples:

   ```ruby
   >> arr = [3, 8, 97, 16, 444, 1]
   >> arr.include?(8)					=> true
   >> arr.include?("duck")		  => false
   ```

6. `Array#collect`

   `Array#collect`  is a method that iterates over an array, allows us to do something for every element of the array, and returns a new array based on the block’s return value. Each element is transformed based on the return value. In this example:

      ```ruby
   >> [1, 2, 3].collect { |num| num * 2 }
   => [2, 4, 6]
      ```

   the block's return value would be the value of each element itself  multiplied by 2 (`num * 2`).  The return value is the new array with values `[2, 4, 6]`.

   `Array#collect` is the same as `Array#map` and, "under the hood", both `collect` and `map` are the same C `rb_ary_collect` method.

7. `Array#first`

   `Array#first` returns the first element or elements in the given array.  If the `first` method is passed a number as an argument (`first(n)`, the return value will be the first `n` number of elements.  For example:

   ```ruby
   >> arr = [1, 2, 3]
   >> arr.first(2)
   => [1, 2]
   ```

   If `first` is called on an empty array, it will return `nil`.  If `first(n)` is called it will return the empty array (`[]`).

8. `Array#last`

   `Array#last` returns the last element or elements in the given array.  If the `last` method is passed a number as an argument (`last(n)`, the return value will be the last `n` number of elements.  For example:

   ```ruby
   >> arr = [1, 2, 3]
   >> arr.last(2)
   => [2, 3]
   ```

   If `last` is called on an empty array, it will return `nil`.  If `last(n)` is called it will return the empty array (`[]`).

9. `shuffle`

   `Array#shuffle` returns a new array with elements of the given array shuffled.

   Example:

   ```ruby
   >> arr = [1, 2, 3, 4, 5, 6]
   >> arr.shuffle
   => [6, 1, 2, 5, 4, 3]
   ```
