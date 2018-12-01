=begin 
# Array#sort on multi-dimensional array
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]

The documentation states the "Each object in each array is compared... in an 'element-wise' manner", so the first object in all of the arrays is compared initially. Since three of the arrays have the string 'a' at their first index, these all come before the array that has the string 'b' at its first index.

You will have noticed that the sub-array that has 'b' at its first index has an integer 2 at its second index. We already know that comparing an integer with a string will return nil, which will cause sort to throw an error. 
=end

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr3 = arr2.map do |char|
  char.upcase
end

p arr1 # => ["a", "b", "c"]
p arr2 # => ["a", "b", "c"]
p arr3 # => ["A", "B", "C"]