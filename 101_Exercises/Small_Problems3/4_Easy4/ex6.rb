=begin 
P - given an array of numbers reutnr an array with the same number of elements and where each each has the running total from the original array
E - [2, 5, 13] would be [2, 7, 20]
D - 1. Take in original array
    2. Return modified array
A:  1. Create an new empty array
    2. Iterate through the original array
    3. use a condition to test if it's the first element
      a. if it is append it as the first element of the new array
      b. if it's not append the addition of the current element in the new array and the current iteration
    4. Output the new array
C
=end

def running_total(number_array)
  new_array = []
  number_array.each do |current_number|
    if current_number == number_array.first
      new_array << current_number
    else
      new_array << current_number + new_array.last
    end
  end
  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []