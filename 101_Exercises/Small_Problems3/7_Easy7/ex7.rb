=begin
Problem - Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.
Example -show_multiplicative_average([3, 5]) = 7.500
Data Structure - arr to number
Approach - Multiply all the digits in the array
         - Divide by the length of the array
         - Round to 3 decimal places
Code
=end

def show_multiplicative_average(arr)
  "%.3f" % (arr.inject(:*).to_f / arr.size)
end

p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([6])
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667