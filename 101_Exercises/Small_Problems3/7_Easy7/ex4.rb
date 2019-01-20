=begin
Problem- swap the cases in a given string
Example- 'CamelCase' -> 'cAMELcASE'
Data Structure- string to array then to string again
Approach- CONVERT the string into an array
          -SWAP the case of each letter
          -Join the array to return a strin
Code
=end

ALPHABET = ("a".."z").to_a

def swapcase(string)
  result = string.chars.map do |letter|
    if ALPHABET.include?(letter)
      letter.upcase
    else
      letter.downcase
    end
  end
  result.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'