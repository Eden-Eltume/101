def reverse!(array)
  left_index = 0
  right_index = -1
  midpoint = array.size / 2

  while left_index < midpoint
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

p reverse!([1,2,3,4])
