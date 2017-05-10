def triangle(num)
  num_spaces = num - 1
  num_stars = 1

  num.times do |n|
    puts(" " * (num_spaces) + ("*" * num_stars))
    num_spaces -= 1
    num_stars += 1
  end
end

triangle(5)
triangle(9)
