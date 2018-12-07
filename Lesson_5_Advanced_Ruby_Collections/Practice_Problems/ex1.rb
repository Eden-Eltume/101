arr = ['10', '11', '9', '7', '8']
result = arr.map do |el|
  el.to_i
end

arr2 = result.sort.reverse

arr3 = arr2.map do |int|
  int.to_s
end

p arr3

