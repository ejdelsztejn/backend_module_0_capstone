## Day 6 Questions

1. **In your own words, what is a Class?**

   A Class is essentially a blueprint for an object (an instance of that Class) that contains information about how to construct the object by giving information about what attributes and behaviors that object should have.



2. **What is an attribute of a Class?**

   An attribute of a Class is a piece of information that all instances of the given Class share, even if their own individual versions of the attribute vary.  For example, different instances of a `Dog` class will all have a `color` attribute, but one instance could be `"brown"` and another instance could be `"white"`.



3. **What is behavior of a Class?**

   A behavior of a Class (also known as a method) is an action that an instance of the given class can perform.  For example, all instances of the `Dog` class can `bark`, `fetch`, and `eat`.



4. **In the space below, create a Dog class with at least 2 attributes and 2 behaviors:**

   ```ruby
   class Dog
   	attr_reader :breed, :color, :has_ball

     def initialize(breed, color, has_ball = false)
       @breed 		= breed
       @color 		= color
       @has_ball = has_ball
     end

     def bark
       puts "Bow wow!"
     end

     def fetch
       @has_ball = true
       puts "I got it!"
     end

   end
   ```



5. **How do you create an instance of a class?**

   You create an instance of a class by calling the class method `new` on the class.  For example, we can create a new instance of the `Dog` class above by doing the following:

   ```ruby
   maggie = Dog.new
   ```

   Here we created an instance of the `Dog` class and assigned to variable `maggie` .  `maggie` is an instance (or object) of the `Dog` class.



6. **What questions do you still have about classes in Ruby?**

   I am curious about best practices for when to use `self`, but I think that I don't know enough yet to know the right questions to ask.  I am also looking foward to learning more about when to use `attr_reader`, `attr_writer`, and `attr_accessor`.
