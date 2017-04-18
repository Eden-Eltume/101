CONSTANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def double_consonants(str)
  new_str = ''
  counter = 0
  loop do
    break if counter == str.length
    current_char = str[counter]
    if CONSTANTS.include?(current_char.downcase)
      new_str << current_char * 2
    else
      new_str << current_char
    end
    counter += 1
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
