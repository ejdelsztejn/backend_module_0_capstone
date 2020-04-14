print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
# ----------------------------------------------------------------------------
puts "What's your name?"
name = gets.chomp
puts "Oh hey, #{name}.  Do you like potatoes?"
puts "(a) Duh!"
puts "(b) Nope."
answer = gets.chomp
if answer.downcase.start_with?('a')
  puts "Yes... one of us!"
elsif answer.downcase.start_with?('b')
  puts "Be gone, potato-hater!!"
else
  puts "I didn't understand your answer, but I don't have time to ask again."
end
puts "See ya!"
