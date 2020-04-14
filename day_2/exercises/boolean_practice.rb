p true && true
# true
p false && true
# false
p 1 == 1 && 2 == 1
# false
p "test" == "test"
# true
p 1 == 1 || 2 != 1
# true
p true && 1 == 1
# true
p false && 0 != 0
# false
p true || 1 == 1
# true
p "test" == "testing"
# false
p 1 != 0 && 2 == 1
# false
p "test" != "testing"
# true
p "test" == 1
# false
p !(true && false)
# true
p !(1 == 1 && 0 != 1)
# false
p !(10 == 1 || 1000 == 1000)
# false
p !(1 != 10 || 3 == 4)
# false
p !("testing" == "testing" && "Zed" == "Cool Guy")
# true
p 1 == 1 && (!("testing" == 1 || 1 == 0))
# true
p "chunky" == "bacon" && (!(3 == 4 || 3 == 3))
# false
p 3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))
# false
# -----------------------------------------------------------------------------
# There are a lot of operators in Ruby similar to != and ==. Try to find as many
# "equality operators" as you can. They should be like < or <=.
# Write out the names of each of these equality operators. For example, I call
# != "not equal."

# >=      - Greater than or equal to
# <=      - Less than or equal to
# >       - Greater than
# <       - Less than
# <=>     - Combined comparison operator (spaceship operator)
# ===     - Test equality
# .eql?   - True if two values are equal and of the same type
# equal?  - True if two things are the same object
