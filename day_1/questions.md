## Day 1 Questions

1. How would you print the string `"Hello World!"` to the terminal?

   ```ruby
   p "Hello World!"
   ```

1. What character is used to indicate comments in a ruby file?

   `#`

1. Explain the difference between an integer and a float?

1. In the space below, create a variable `animal` that holds the string `"zebra"`

   ```ruby
   animal = 'zebra'
   ```

1. How would you print the string `"zebra"` using the variable that you created above?

   ```ruby
   p animal
   ```

1. What is interpolation? Use interpolation to print a sentence using the variable `animal`.

   ```ruby
   p "The #{animal} is typically black and white."
   ```

1. What method is used to get input from a user?

   The `Kernel#gets` method is used to get input from a user.

1. Name and describe two common string methods:

   `String#split` is invoked on a string when we want to divide the string into different words, characters, etc.  It returns an array that contains elements that are substrings of the string split according to the delimiter passed to the method as an argument.

   `String#length` returns that character length of the string.
