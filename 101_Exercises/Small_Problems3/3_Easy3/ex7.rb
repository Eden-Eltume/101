=begin
def oddities(arr)
  oddities_array = []
  counter = 0
  loop do 
    break if counter >= arr.size
    oddities_array << arr[counter]
    counter += 2
  end
  oddities_array
end
=end
def oddities(array)
  result = Array.new
  array.each_with_index do |item, index|
    result << item if index.even?
  end
  result
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []