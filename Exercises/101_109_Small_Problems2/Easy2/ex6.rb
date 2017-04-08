select_num = (1..99).select do |num|
  num.odd?
end

puts select_num
