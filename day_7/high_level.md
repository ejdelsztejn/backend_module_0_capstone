1. **Checker Board**

We know that the input will be an integer to indicate the size of the checker board (`n`), and that the output will be a checker board size `n * n`.

The following question and consideration are important to think about going into creating our program:

* Can we assume that the input will always be a positive integer?
  If the input is not a positive integer, how will we handle that
  input?
* The checker board spaces alternate in color from row to row.
  - Odd number rows start with `X` from the left
  - Even number rows start with `" "` from the left.

Examples:

```ruby
checkerboard(6)
X X X
 X X X
X X X
 X X X
X X X
 X X X

checkerboard(3)
X X
 X
X X

checkerboard(10)
X X X X X
 X X X X X
X X X X X
 X X X X X
X X X X X
 X X X X X
X X X X X
 X X X X X
X X X X X
 X X X X X
```



Now that we know our expected input, output, and additional considerations, we can start thinking about how to solve the problem.



Data Structure(s):
We need a range of numbers from 1..n so that we can display every
row of checker board pattern



----------------------------------------------------------------------------------------------------------------



2. **Ceasar Cipher**

We know that the input will be a string and an integer (representing how many spaces to the left to shift the alphabet), and that the output will be the string encoded based on the shift value provided by the user.

The following questions are important to consider going into creating our program:

* What if a string is empty?
* What if the shift is 0?
* What about characters that are not letters?

Now that we know our expected input, output, and additional considerations, we can start thinking about how to solve the problem.

One of the first things we need to create is the data structure for the cipher itself.  We know that we have the plain alphabet, and that it will beed to be shifted to the left by the number of "spaces" indicated by the integer.

An array makes the most sense to represent the alphabet because we can use the numbers of the indices to calculate the shift to the left. An
array is preferable to a hash because we can shift left into negative
indices (for example, the letter `'Z'` will be located at index `25`,
which is also `-1`) so this will make shifting seamless.

So, the first thing we will do is initialize constant variable `ALPHABET` and assign it the value of the alphabet in an array:

```ruby
ALPHABET = ('A'..'Z').to_a
```

We use a constant variable here because we know that the value assigned to the variable won't change, and because it will be available throughout our program.

Now it's time to create our `CeasarCipher` class.
