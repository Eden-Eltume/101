=begin
Problem - sort out each sub_array by odd values
          key the same elements and structure
Example -
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]] to [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
Data structure = 1. array argument
                 2. nested array
Algorithm - 1. iterate through the array
            2. compare the current sub array with the following one
              a. ignore the even numbers
                1. sort the odd numbers
                2. return the original array of sub array that comes first
            3. return the result of the comparison
Code
=end
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

def sort_nest_arrays(nested_array)
  nested_array.sort do |first_sub, second_sub| 
    first_sub.reject{|num| num.even?} <=> second_sub.reject{|num| num.even?}}
  end
end

# solution
arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

p sort_nest_arrays(arr)