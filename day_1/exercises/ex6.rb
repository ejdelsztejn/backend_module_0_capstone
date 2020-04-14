# initialize variable types_of_people and assign it value of
# the number of types of people
types_of_people = 10
# initialize variable x and assign it the value of
# the first part of joke with types_of_people within it
x = "There are #{types_of_people} types of people."
# initialize variable binary and assign it value of
# string "binary"
binary = "binary"
# initialize variable do_not and assign it value of
# string "don't"
do_not = "don't"
# initialize variable y and assign it the value of
# the last part of joke with binary and do_not within it
y = "Those who know #{binary} and those who #{do_not}."

# print first part of joke
puts x
# print last part of joke
puts y

# print strings with variables x and y interpolated
puts "I said: #{x}."
puts "I also said: '#{y}'."

# initialize variable hilarious and assign it boolean
# value of false
hilarious = false
# initialize variable joke_evaluation and assign it
# string value with hilarious within it
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# print joke_evaluation
puts joke_evaluation

# initialize variables w and e and assign string values
# to concatenate
w = "This is the left side of..."
e = "a string with a right side."

# print w and e concatenated together
puts w + e
