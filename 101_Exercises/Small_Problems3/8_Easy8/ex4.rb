=begin
P- Write a method that returns a list of all substrings of a string with no duplications.
E- "de" = ['d','e', e]
D- string to array of strings
A- ITERATE through the string
 - INVOKE the substrings_at_start and append the result to the array
 - REMOVE the first element of the original string
 - RETURN the new array
 - END
C
=end

def substrings_at_start(str)
  combo_string = ''
  result = str.chars.map{|letter| combo_string += letter}
  result
end

def substrings(str)
  arr = []

  until str.empty? do
    arr << substrings_at_start(str)
    str.delete!(str[0].to_s)
  end

  arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]