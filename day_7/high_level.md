**Ceasar Cipher**

We know that the input will be a string and an integer (representing how many spaces to the left to shift the alphabet), and that the output will be the string encoded based on the shift value provided by the user.

The following questions are important to consider going into creating our program:

* What if a string is empty?
* What if the shift is 0?
* What about characters that are not letters?

We have the following example to help us figure out how to put our Ceasar Cipher together:

```ruby
cipher = CeasarCipher.new
cipher.encode("Hello World", 5)     # => "CZGGJ RJMGY"
```

Now that we know our expected input, output, and additional considerations, we can start thinking about how to solve the problem.

One of the first things we need to create is the data structure for the cipher itself.  We know that we have the plain alphabet, and that it will need to be shifted to the left by the number of "spaces" indicated by the integer.

An array makes the most sense to represent the alphabet because we can use the numbers of the indices to calculate the shift to the left. Anvarray is preferable to a hash because we can shift left into negativevindices (for example, the letter `'Z'` will be located at index `25`, which is also `-1`) so this will make shifting seamless.

So, the first thing we will do is initialize constant variable `ALPHABET` and assign it the value of the alphabet in an array:

```ruby
ALPHABET = ('A'..'Z').to_a
```

We use a constant variable here because we know that the value assigned to the variable won't change, and because it will be available throughout our program.

We know from the example that we need a `CeasarCipher` class and that it will have the method `encode` that takes the `string` and `shift` inputs.  The first thing we will do is declare the new class with the `encode` method:

```ruby
class CeasarCipher
  def encode(string, shift)
  end
end
```

Look at our list of questions and considerations, there are a couple that we can deal with right away: returning the value of the original string in our `encode` method if the `string` input is empty or the `shift` is 0.

We can extract this to separate methods to keep this clean, and then return the string if either of those methods returns `true` from within `encode`:

```ruby
class CeasarCipher
  attr_reader :string, :shift

  def is_empty?(string, shift)
    string == ''
  end

  def is_shift_0?(string, shift)
    shift == 0
  end

  def encode(string, shift)
    return string if is_empty?(string, shift) || is_shift_0?(string, shift)
  end
end
```

Now we need to figure out how to shift the alphabetical letters of `string` the appropriate number of letters to the left.

We can return a new string at the end of the method with the value of `string` after going through the cipher.  We can initialize variable `shifted_string` and assign it the value of an empty string.

```ruby
shifted_string = ''
```

So - how are we going to go through`string` character by character, check if it is a letter of the alphabet, shift it, and append it to`shift_string`?  The first thing is to break down `string` into characters.

In order to compare the letters in string to the letters in the cipher, then need to be capitalized.  We can capitalize the letters by calling the `upcase!` method on `string`.  Then, we need to break it down into individual characters.  The `chars` method will split `string` into an array with each character as an element.  Finally, once we have each capitalized character split into an element of an array, we can use the `each` method to iterate through that array.  We can chain these methods together like so:

```ruby
string.upcase!.chars.each do |char|
	# ...iteration stuff goes here...
end
```

Alright, we are well on our way to solving this problem!

Now we want to check each `char` to see if it is a letter.

If it is, then we need to shift it.

If it's not a letter, then we can just append it to our string:

```ruby
string.upcase!.chars.each do |char|
	if ALPHABET.include?(char)
    # ...shift and then append letter here...
  else
    shifted_string << char
  end
end
```

If the `char` is a letter of the alphabet, we know that we want to

1. locate its index location in the `ALPHABET` array
2. subtract its index location by `shift` to locate the new letter
3. append the new letter to `shifted_string`

We can accomplish this using the following code:

```ruby
value = (ALPHABET.index(char) - (shift))
shifted_string << ALPHABET[value]
```

All together, our solution looks like this:

```ruby
ALPHABET = ('A'..'Z').to_a

class CeasarCipher
  attr_reader :string, :shift

  def is_empty?(string, shift)
    string == ''
  end

  def is_shift_0?(string, shift)
    shift == 0
  end

  def encode(string, shift)
    return string if is_empty?(string, shift) || is_shift_0?(string, shift)
    shifted_string = ''
    string.upcase!.chars.each do |char|
      if ALPHABET.include?(char)
        value = (ALPHABET.index(char) - (shift))
        shifted_string << ALPHABET[value]
      else
        shifted_string << char
      end
    end
    shifted_string
  end
end
```
