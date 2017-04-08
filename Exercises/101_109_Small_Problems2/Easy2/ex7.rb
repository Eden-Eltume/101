select_num = (1..99).select do |num|
  num.even?
end

puts select_num
