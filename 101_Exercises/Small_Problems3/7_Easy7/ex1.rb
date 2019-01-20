=begin
Problem- combine two array and return a new array with all the element of obth arrays in alternation
Example- interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
Data structure- two array into 1
Approach- Use the zip function
Code
=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']