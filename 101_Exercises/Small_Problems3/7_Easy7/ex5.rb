=begin
Problem - Given a string starting with caps, alternate between uppercase and capital letters. Non-leters count as a character.
Example - 'I Love Launch School!' -> 'I LoVe lAuNcH ScHoOl!'
Data Structure - string to new string
Approach - LOOP through the string
            IF current_char is the first letter, capitalize it
            ELSIF it's odd, capitalize
            ELSE current_char should be downcase
          END
Code
=end

def staggered_case(string)
  new_string = ''

  counter = 0
  loop do
    break if counter == string.length

    current_char = string[counter]

    if counter == 0
      new_string << current_char.upcase
    elsif counter.odd?
      new_string << current_char.downcase
    else
      new_string << current_char.upcase
    end 

    counter += 1
  end

  new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'