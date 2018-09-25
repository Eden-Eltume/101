def show_multiplicative_average(arr)
  sum = 1
  arr.map do |num|
    sum *= num.to_f
  end
  average = sum / arr.size
  sprintf("%.3f", average)
end


p show_multiplicative_average([3, 5])
#The result is 7.500

p show_multiplicative_average([6])
#The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
