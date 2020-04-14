# total number of cars
cars = 100
# number of spaces in each car
space_in_a_car = 4.0
# total number of drivers
drivers = 30
# total number of passengers
passengers = 90
# calculates total number of cars not driven
cars_not_driven = cars - drivers
# total number of cars driven
cars_driven = drivers
# calculates carpool capacity
carpool_capacity = cars_driven * space_in_a_car
# calculates average number of passengers per car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today"
puts "We need to put about #{average_passengers_per_car} in each car."

# ---------------------------------------------------------------------------

# Study Drills

# When I wrote this program the first time I had a mistake, and Ruby told me
# about it like this:
#
#   There are 100 cars available.
#   There are only 30 drivers available.
#   There will be 70 empty cars today.
#   ex4.rb:14: undefined local variable or method `carpool_capacity' for
#       main:Object (NameError)
#
# Explain this error in your own words. Make sure you use line numbers and
# explain why.

## Answer: This error occurred because the variable carpool_capacity was not
## properly defined before trying to use it.  If a word typed into Ruby is
## not a keyword, the word will be treated first as a variable if it was
## already defined, and if it wasn't, then ruby will try to call a method
## using that word.  In this case, the likely error was a typo, and either
## carpool_capacity, cars_driven, or space_in_a_car was simply misspelled.


# I used 4.0 for space_in_a_car, but is that necessary? What happens if it's
# just 4?

## 4 works just fine because we don't need the precision associated with floats
# since we are dealing with whole numbers (people and spaces in a car)
