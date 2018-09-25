def running_total(arr)
  sum = 0
  counter = 0
  new_arr = []
  loop do
    break if counter == arr.size
    sum += arr[counter]
    new_arr << sum
    counter += 1
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
