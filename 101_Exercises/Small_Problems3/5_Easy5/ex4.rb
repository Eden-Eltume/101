=begin
P - given a string of words separated by spaces return a string in which the first and last letters of every word are swapped
E - Given "Hi Eden" -> "iH ndeE"
D- 1. string argument
  2. split string into array
  3. return string
A- 1. split the string into an array using space as delimiter
   2. Iterate through each word
      a. swap the first and last letter of each word
   3. join the array back into a string with space as delimiter
C
=end

def swap(original_string)
  string_array = original_string.split(" ")
  result = string_array.map do |word| 
    word[0], word[-1] = word[-1], word[0]
    word
  end
  result.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'