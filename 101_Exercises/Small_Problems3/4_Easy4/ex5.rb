=begin
P - Return the sum of all the multiple of 3 or 5 between 1 and a given number
E - Given 20 -> 98
D - 1. Argument is an integer
    2. Use an array to keep track of multiples
    3. Result is an integer
A: 
  1. Find all the integers between 1 and 20
    a. Use the upto method
  2. Append the current integer to an array if it's divisble by 3 or 5
    a. Use a condiiton
  3. Sum the elements of the array
    a. Use the max method
  4. Return the result
C
=end

def multisum(num)
  sum_array = []
  1.upto(num) do |current_number|
    if current_number % 3 == 0 || current_number % 5 == 0
      sum_array << current_number
    end
  end
  sum_array.sum
end

p multisum(3) == 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) == 234168