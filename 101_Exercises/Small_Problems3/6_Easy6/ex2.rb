=begin
Problem- take an array of strings and return the same array of strings without the vowels (a,e,i,o,u)
Example- remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
Data structure - Take the array of strings input 
              - Use a VOWEL constant
               - Return the same array of strings minus vowels
Approach- 1. Iterate through each element in the array of strings
            a. Iterate through each character in the element
            b. delete the character if it's a vowel
          2. return the new array consisting of consonants
Code
=end

VOWELS = 'aeiouAEIOU'

def remove_vowels(strings_array)
  strings_array.map{|el| el.delete(VOWELS)}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']