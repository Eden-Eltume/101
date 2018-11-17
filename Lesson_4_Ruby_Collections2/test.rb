=begin
P - return a string in which the first and last letter of each word are swapped
E - "Hi my name is Eden" -> "iH ym eamn si ndeE"
D - Take a string convert to array and convert back to string
A - 
  1. convert string to array
  2. Iterate over array
  3. swap out the first and last letter of each word
  4. convert array back to string
C - righ now
=end

def swap(aString)
  anArray = aString.split
  anArray.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  anArray.join(" ")
end

p swap('Oh what a wonderful day it is')

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'