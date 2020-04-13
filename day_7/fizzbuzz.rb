def fizzbuzz(num_range)
  num_array = []
  for num in num_range
    if num % 3 == 0 && num % 5 != 0
      num_array << "Fizz"
    elsif num % 5 == 0 && num % 3 != 0
      num_array << "Buzz"
    elsif num % 3 == 0 && num % 5 == 0
      num_array << "FizzBuzz"
    else
      num_array << num
    end
  end
  p num_array.join(', ')
end

fizzbuzz(1..100)
fizzbuzz(200..230)
fizzbuzz(-20..0)
