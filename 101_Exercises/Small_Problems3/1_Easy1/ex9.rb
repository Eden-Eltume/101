def sum(number)
  map_result = number.to_s.split("").map{|char| char.to_i}
  map_result.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45