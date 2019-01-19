=begin
Problem - take an array as an argument and reverse its elements in-place; mutate it
Example - 

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

Data structure - take in an array
               - return an array with the same object_id
Approach - iterate through the array
         - switch the first & last, then the 2nd to last and second, etc using the notation
         - end the iteration once you've passed the center of the array
Code
=end

def array_reverso!(arr)
  left_index = 0
  right_index = -1
  if arr.empty?
    arr
  else
    counter = 1
    loop do
      arr[left_index], arr[right_index] = arr[right_index], arr[left_index] 
      break if counter >= (arr.size)/2
      left_index += 1
      right_index -= 1
      counter += 1
    end
    arr
  end
end

list = [1,2,3,4]
p array_reverso!(list) == [4,3,2,1]
p list.object_id == array_reverso!(list).object_id


abedc = %w(a b e d c)
p array_reverso!(abedc) == ["c", "d", "e", "b", "a"]
p abedc == ["c", "d", "e", "b", "a"]


abc = ['abc']
p array_reverso!(abc) == ["abc"]
p abc == ["abc"]

blank = []
p array_reverso!(blank) == []
p blank == []