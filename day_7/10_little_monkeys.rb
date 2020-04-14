# ## 10 Little Monkeys
#
# Create a file named 10_little_monkeys.rb and within that file, write a program that will print the following nursery rhyme, but for *10* monkeys.
#
# > Three little monkeys jumping on the bed,
# > One fell off and bumped his head,
# > Mama called the doctor and the doctor said,
# > "No more monkeys jumping on the bed!"
# >
# > Two little monkeys jumping on the bed,
# > One fell off and bumped his head,
# > Mama called the doctor and the doctor said,
# > "No more monkeys jumping on the bed!"
# >
# > One little monkey jumping on the bed,
# > He fell off and bumped his head,
# > Mama called the doctor and the doctor said,
# > "Get those monkeys right to bed!"
#
# ### Bonus
# Can you write the program so that it will run for any number of monkeys?

MONKEYS = {
  1  => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five",
  6  => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine", 10 => "Ten",
}

def little_monkeys(num_of_monkeys)
  (1..num_of_monkeys).to_a.reverse.each do |num|
    if MONKEYS[num] == "One"
      puts "One little monkey jumping on the bed,"
      puts "He fell off and bumped his head,"
      puts "Mama called the doctor and the doctor said,"
      puts "Get those monkeys right to bed!"
    else
      puts "#{MONKEYS[num]} little monkeys jumping on the bed,"
      puts "One fell off and bumped his head,"
      puts "Mama called the doctor and the doctor said,"
      puts "No more monkeys jumping on the bed!"
      puts " "
    end
  end
end

little_monkeys(10)
little_monkeys(13)
