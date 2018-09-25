def digit_list(number)
  num_array = []
  str_array = number.to_i.to_s.split('')
  str_array.each do |char|
    num_array << char.to_i
  end
  num_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
