=begin
Problem - combine two arrays and return back 1 new array with no duplicates
Example - merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
Data structure - array
Approach - set a new_array variable
            -combine the two arrays
          -flatten the new_array
          -call uniq on the new_array
Code
=end

def merge(arr1, arr2)
  merged_arr = arr1 + arr2
  merged_arr.flatten.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]