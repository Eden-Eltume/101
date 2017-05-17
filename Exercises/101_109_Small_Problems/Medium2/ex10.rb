def sum_square_difference(num)
  sum = 0
  (num + 1).times do |t|
    sum += t
  end

  square = sum ** 2

  squares = []
  (num + 1).times do |s|
    squares << s ** 2
  end

  sq_sum = 0
  squares.map do |sq|
    sq_sum += sq
  end

  square - sq_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
