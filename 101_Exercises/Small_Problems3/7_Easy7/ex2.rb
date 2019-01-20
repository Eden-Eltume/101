=begin
Problem - take a string and return the count of lowercase, uppercase and neither as a hash
Example - 'abCdef 123' -> { lowercase: 5, uppercase: 1, neither: 4 }
Data Structure - string to hash
Approach - SET hash variable to keep count
            - LOOP through string
              - USE conditional to Determine if lowercase, uppercase or neither
              - ADD +1 for whichever it is
            End
          END
Code
=end

ALPHABET = ("a".."z").to_a

def letter_case_count(str)
  char_type = {
                neither: 0,
                lowercase: 0,
                uppercase: 0
              }
  
  counter = 0
  loop do
    break if counter == str.length

    current_char = str[counter]
    if ALPHABET.include?(current_char.downcase) == false
      char_type[:neither] += 1
    elsif current_char == current_char.downcase
      char_type[:lowercase] += 1
    elsif current_char == current_char.upcase
      char_type[:uppercase] += 1
    end
      
    counter += 1
  end

  char_type
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
