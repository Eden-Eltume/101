def negative(num)
  if num == 0
    0
  elsif num.to_s.include?('-')
    num
  else
    -num
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
