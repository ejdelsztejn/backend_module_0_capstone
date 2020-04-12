## Day 3 Questions

1. **What is a conditional statement? Give three examples.**

   A conditional statement executes different actions depending on whether the condition evaluates to `true` or `false`.

   Examples:

   *if* it rains, take an umbrella.

   *if* it does not rain, do not take an umbrella.

   *if* the temperature is below 32 degree F, it is freezing.

1. **Why might you want to use an if-statement?**

   You might want to use an `if` statement if you want to tell your data where to go next based on whether or not a specific criteria is met.  For example, let's say that you need to decide whether or not to wish a user of your program "Happy birthday!"  If the day and month that they fill out as their birthday is the same as today, then we wish them "Happy birthday!"  Otherwise, we don't wish them a happy birthday.

1. **What is the Ruby syntax for an if statement?**

   ```ruby
   if <condition>
     <'expression to evaluate if above is true'>
   end
   ```

1. **How do you add multiple conditions to an if statement?**

   ```ruby
   if <condition>
     <'expression to evaluate if above is true'>
   elsif <condition>
     <'expression to evaluate if above is true'>
   else
     <'expression to evaluate if above is true'>
   end
   ```

1. **Provide an example of the Ruby syntax for an if/elsif/else statement:**

   ```ruby
   if <condition>
     <'expression to evaluate if above is true'>
   elsif <condition>
     <'expression to evaluate if above is true'>
   else
     <'expression to evaluate if above is true'>
   end
   ```

1. **Other than an if-statement, can you think of any other ways we might want to use a conditional statement?**

   The `unless` statement works as the opposite of an `if` statement, where the statement is executed when the condition evaluates to false (as opposed to executing when the condition evaluates to `true`, as it does with the `if` statement.)
