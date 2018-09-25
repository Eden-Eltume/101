def show_multiplicative_average(arr)
  total = arr.inject{|sum, val| sum *= val }
  average = total / arr.count.round(3)
  format("%.3f", average)
end

p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
