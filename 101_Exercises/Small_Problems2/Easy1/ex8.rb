def average(numbers_array)
  sum = 0
  numbers_array.each do |number|
    sum += number
  end
  result = sum / numbers_array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
