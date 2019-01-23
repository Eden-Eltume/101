=begin
P- given a string return an array of substring from shortest to longest that show the gradual formation of the original string
E- ('abc') as ['a', 'ab', 'abc']
D- string to array
A- SET an empty string variable
 - CONVERT the string to an array of letters
  - ADD each current letter to the empty string
  - MAKE each element of new array as the current state of the string variable
  - RETURN the result
 -END
C
=end

def substrings_at_start(str)
  combo_string = ''
  result = str.chars.map{|letter| combo_string += letter}
  result
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']