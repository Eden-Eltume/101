arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map do |sub_array|
  sub_array.select{|num| num % 3 == 0}
end
p result