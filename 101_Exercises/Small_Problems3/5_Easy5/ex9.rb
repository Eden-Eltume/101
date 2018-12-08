=begin 
Problem - return a string that contains the value of the original string with all consecutive duplicate characters reduced into a single one
Example -crunch('ddaaiillyy ddoouubbllee') == 'daily double'
Data structure - take string as argument
               - return none redundant string
Algo -  - loop through the string argument
        - compare the current char with the following one
        - create an empty string
        - add the current string only if it's not equal to the following one
        - return the create string
Code
=end

def crunch(redundant_string)
  reduced_string = ''

  counter = 0
  loop do
    break if counter == redundant_string.length

    current_char = redundant_string[counter]
    following_char = redundant_string[counter + 1]
    if current_char != following_char
      reduced_string << current_char
    end
    
    counter += 1
  end
  reduced_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

