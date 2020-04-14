def checker_board(n)
  for num in 1..n
    if n.odd?
      puts ('X ' * (n / 2)) + 'X' if num.odd?
      puts ' X' * (n / 2) if num.even?
    else
      puts 'X ' * (n / 2) if num.odd?
      puts ' X' * (n / 2) if num.even?
    end
  end
end

checker_board(6)
puts ''
checker_board(3)
puts ''
checker_board(-9)
puts ''
checker_board(10)
puts ''
checker_board(20)
