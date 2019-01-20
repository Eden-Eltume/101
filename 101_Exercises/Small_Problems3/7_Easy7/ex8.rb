=begin
Problem - multiply each element in array by an element in the same index of another and return it as an array
Example - [3, 5, 7] and [9, 10, 11] -> [27, 50, 77] 
Data structure - Two arrays into one
Approach - Match the elements by calling zip
         - Iterate through each array in the outer array
         - Multiply the elements within each
         - Flatten the result
Code
=end

def multiply_list(arr1, arr2)
  multi_arr = arr1.zip(arr2)
  multi_arr.map{|sub_arr| sub_arr.inject(:*) }.flatten
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]