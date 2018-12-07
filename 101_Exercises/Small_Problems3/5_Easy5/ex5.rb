=begin 
P - given a string of with non-alphabetica characters return a string will of the non-alphabetic characters replaced by spaces.
    If they occur in a row only put one space
E - cleanup("---what's my +*& line?") == ' what s my line '
D - 1. string as argument
    3. return string
A - 1. take string input
    2. loop over the string
      a. find out if current char is non-alphabetical
      b. replace the current char with a space if it is
      c. if the next current char is also non-alphbetical, delete it
      d. else keep current
    3. remove the extraneous spaces
      a. use string#squeeze method
C
=end
def cleanup(text)
  counter = 0
  loop do
    break if counter >= text.length
    current_char = text[counter]
    
    if current_char.match?(/[^a-zA-Z]/)
      text.gsub!(current_char, " ")
    else
      current_char
    end
    counter += 1 
  end
  text.squeeze
end

=begin 
# Without the use of the string#squeeze method
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  index = 0
  new_string = ""
  loop do
    break if index == string.length
    if ALPHABET.include?(string[index])
      new_string << string[index]
    elsif new_string[-1] == " "
    else
      new_string << " "
    end
    index += 1
  end
  new_string
end
=end

p cleanup("---what's my +*& line?") == ' what s my line '