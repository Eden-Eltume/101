def odd_or_even?(arr)
  if arr.length % 2 != 0
    'odd'
  else
    'even'
  end
end

def halvsies(arr)
  arr1 = []
  arr2 = []
  arr3 = []

  result = if odd_or_even?(arr) == 'odd'
    arr_midpoint = (arr.length/2).round + 1
  else
    arr_midpoint = arr.length/2
  end

  counter = 0
  loop do
    break if counter == result
    current_el = arr[counter]
    arr1 << current_el
    counter += 1
  end

  counter2 = 0
  loop do
    break if arr1 + arr2 == arr
    starting_el = arr1.size
    current_el = arr[starting_el + counter2]
    arr2 << current_el
    counter2 += 1
  end
  arr3.push(arr1)
  arr3.push(arr2)
  arr3
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
