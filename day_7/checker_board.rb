def checker_board(size)
  for num in 1..size
    if size.odd?
      puts ('X ' * (size / 2)) + 'X' if num.odd?
      puts ' X' * (size / 2) if num.even?
    else
      puts 'X ' * (size / 2) if num.odd?
      puts ' X' * (size / 2) if num.even?
    end
  end
end

checker_board(6)
puts ''
checker_board(3)
puts ''
checker_board(10)
puts ''
checker_board(20)
