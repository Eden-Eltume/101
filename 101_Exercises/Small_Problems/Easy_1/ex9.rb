def sum(number)
  string_number = number.to_s
  split_numbers = string_number.split('')
  total = 0
  split_numbers.each do |sn|
    total += sn.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
