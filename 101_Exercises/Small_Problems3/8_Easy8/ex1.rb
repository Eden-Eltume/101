=begin
P- write a method that takes an array of numbers & returns the sum of the sums of each following number
E-[3, 5, 2] as (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
D- array to number
A- SET a sum variable to 0
 - MAKE each new element as the current sum
 - ADD all the elements in the new array
 - RETURN the result
 - END
C
=end

def sum_of_sums(nums)
  sum = 0
  result = nums.map { |num| sum += num }
  result.reduce(:+)
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35