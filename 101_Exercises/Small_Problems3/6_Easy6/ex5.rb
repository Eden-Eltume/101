=begin
Problem - reverse the original without mutating it
Examples - [1,2,3,5] -> [4,3,2,1] (new array)
Data structure - take original array
               - create a new array
Approach - set a new_array variable
         - pop each element in the original array
         - append the element to the new array
         - return the new_array
Code 
=end

def reverse(arr)
  new_array = []
  arr.size.times{ new_array << arr.pop }
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true 

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true