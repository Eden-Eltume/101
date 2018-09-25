def merge(arr1, arr2)
  new_arr = []

  until arr1.empty?
    new_arr << arr1.pop
  end

  until arr2.empty?
    new_arr << arr2.pop
  end

  new_arr.sort.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
