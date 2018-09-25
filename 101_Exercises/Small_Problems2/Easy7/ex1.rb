def interleave(arr1, arr2)
  combo_arr = []

  counter = 0
  loop do
    break if counter == arr1.size && counter == arr2.size
    current_arr1 = arr1[counter]
    current_arr2 = arr2[counter]

    combo_arr << current_arr1
    combo_arr << current_arr2

    counter += 1
  end
  combo_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
