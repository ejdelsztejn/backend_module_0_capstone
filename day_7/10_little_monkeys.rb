
MONKEYS = {
  1  => "One", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five",
  6  => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine", 10 => "Ten",
  11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen",
  15 => "Fifteen", 16 => "Sixteen", 17 => "Seventeen", 18 => "Eighteen",
  19 => "Nineteen", 20 => "Twenty", 30 => "Thirty", 40 => "Fourty",
  50 => "Fifty", 60 => "Sixty", 70 => "Seventy", 80 => "Eighty", 90 => "Ninety"
}

def little_monkeys(num_of_monkeys)
  (1..num_of_monkeys).to_a.reverse.each do |num|
    if num == 1
      puts "One little monkey jumping on the bed,"
      puts "He fell off and bumped his head,"
      puts "Mama called the doctor and the doctor said,"
      puts "Get those monkeys right to bed!"
    elsif num > 20 && num % 10 != 0
      tens_place = MONKEYS[(((num / 10).floor) * 10)]
      ones_place = MONKEYS[(num % 10)]
      num_string = tens_place + "-" + ones_place.downcase
      puts "#{num_string} little monkeys jumping on the bed,"
      puts "One fell off and bumped his head,"
      puts "Mama called the doctor and the doctor said,"
      puts "No more monkeys jumping on the bed!"
      puts " "
    elsif num > 99
      puts "Alright, that's enough monkeys..."
      puts " "
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
little_monkeys(18)
little_monkeys(45)
little_monkeys(100)
