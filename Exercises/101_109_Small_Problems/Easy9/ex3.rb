def negative(int)
  str = int.to_s
  if str == '0' || str.include?('-')
    int
  else
    str.insert(0, '-')
  end
  str.to_i
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
