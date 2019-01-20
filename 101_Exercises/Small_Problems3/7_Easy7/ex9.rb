=begin
P- show all the possibilities of combination (by multiplying) that can occur between 2 arrays
E- [2, 4], [4, 3, 1, 2] -> [2, 4, 4, 6, 8, 8, 12, 16]
D- two array into one
A- Call product on the two arrays to achieve the result
 - Go through each sub and multiply all the element in each
 - Flatten & Sort the result
C
=end

def multiply_all_pairs(arr1, arr2)
  multi_arr = arr1.product(arr2)
  multi_arr.map{|sub_arr| sub_arr.inject(:*)}.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]