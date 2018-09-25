def average(integer_array)
  add_array = 0
  integer_array.each do |int|
    add_array += int
  end
  mean = add_array / integer_array.length
  return mean 
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
