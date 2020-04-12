## Day 5 Questions

1. **What is a Hash, and how is it different from an Array?**

   A Hash is a data structure in Ruby that is used to store elements as key-value pairs.  This differs from an Array, which is used to store items in an ordered index.  

   Hashes, while ordered as of Ruby 1.9, are also used less frequently for information that needs to maintain order.  If order is important, arrays are typically used.

   All keys in a hash also must be unique (although values can repeat).  Arrays can have duplicates of elements.

1. **In the space below, create a Hash stored to a variable named `pet_store`.  This hash should hold an inventory of items and the number of that item that you might find at a pet store.**

   ```ruby
   pet_store = {dog_food: 100, cat_food: 150, bird_food: 75}
   ```

1. **Given the following `states = {"CO" => "Colorado", "IA" => "Iowa", "OK" => "Oklahoma"}`, how would you access the value `"Iowa"`?**

   ```ruby
   states["IA"]
   ```

1. **With the same hash above, how would we get all the keys?  How about all the values?**

   `states.keys` will return all the keys. `states.values` will return all the values.

1. **What is another example of when we might use a hash?  In your example, why is a hash better than an array?**

   A hash would work well if we were storing names of members of a group and their personal phone numbers:

   ```ruby
   group_nums = {
     "Jon B." => "555-1234", "Tao L." => "555-9804",
     "Amir K" => "555-1002", "Yasmin A." => "555-4432"
     }
   ```

   In this example, a hash works better than an array because we are able to access the phone number via the member's name.  Since arrays do not use key-value pairs, the information would be more difficult to locate once we had a large number of members and associated numbers.  

   Order also doesn't matter in this example, and since ordered information is typically stored in array, that isn't relevant in this case.

1. **What questions do you still have about hashes?**
