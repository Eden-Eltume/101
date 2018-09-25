def oddities(arr)
  counter = 0
  new_arr = []
  loop do
    break if counter == arr.size
    current_element = arr[counter]
    if counter.even?
      new_arr << current_element
    end
    counter += 1
  end
  new_arr
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
