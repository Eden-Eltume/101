def average(arr)
  sum = 1
  arr.map do |num|
    sum *= num
  end
  sum
end

def multiply_list(arr1, arr2)
  arr3 = arr1.zip(arr2)
  arr4 = []
  for arr in arr3 do
    arr4 << average(arr)
  end
  arr4
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
