=begin
Problem- take an array & break it into 2 evenly. If it's odd, put the middle number in the first half
Example- [1, 2, 3, 4] == [[1, 2], [3, 4]]
[1, 5, 2, 4, 3] == [[1, 5, 2], [4, 3]]
Data structure- take in 1 array
              - return two arrays
Approach- Check whether the array is odd, even, or empty
        - If empty return 2 empty arrays
        - If even split the array in half
          - slice the array from start to middle
          - slice from middle to end
        - If odd
          - do the same process for even
          - change the delimeter
        END
Code
=end

def halvsies(arr)
  if arr.size == 0
    [[], []]
  elsif arr.size.even? == true
    midpoint = (arr.size)/2 
    [arr[0, midpoint], arr[midpoint, arr.last]]
  else
    midpoint = (arr.size)/2 
    [arr[0, midpoint + 1], arr[midpoint + 1, arr.last]]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]