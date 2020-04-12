# 1. If you had an array of numbers, e.g. [1,2,3,4], how do you print out
# the doubles of each number? Triples?

[1, 2, 3, 4].each { |number| number * 2 }
[1, 2, 3, 4].each { |number| number * 3 }

# 2. If you had the same array, how would you only print out the even numbers?
# What about the odd numbers?

[1, 2, 3, 4].each do |number|
  puts number if number.even?
end

[1, 2, 3, 4].each do |number|
  puts number if number.odd?
end

# 3 How could you create a new array which contains each number multipled by 2?

doubles = []
[1, 2, 3, 4].each do |number|
  doubles << number * 2
end

# 4. Given an array of first and last names, e.g. [“Alice Smith”, “Bob Evans”,
# “Roy Rogers”], how would you print out the full names line by line?

names = ["Alice Smith", "Bob Evans", "Roy Rogers"]
names.each do |full_name|
  puts full_name
end

# 5. How would you print out only the first name?

names.each do |full_name|
  puts full_name.split(' ')[0]
end

# 6. How would you print out only the last name?

names.each do |full_name|
  puts full_name.split(' ')[1]
end

# 7. How could you print out only the initials?

names.each do |full_name|
  first_initial = full_name.split(' ')[0][0]
  last_initial = full_name.split(' ')[1][0]
  puts first_initial + last_initial
end

# 8. How can you print out the last name and how many characters are in it?

names.each do |full_name|
  last_name = full_name.split(' ')[1]
  puts last_name, last_name.length
end

# 9. How can you create an integer which represents the total number of
# characters in all the names?

total_chars = 0
names.each { |name| total_chars += name.length }
p total_chars
