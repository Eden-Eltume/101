LOWERCASE = 'a'.upto('z').to_a
UPPERCASE = 'A'.upto('Z').to_a
ALPHABET = LOWERCASE + UPPERCASE
VOWELS = %w(a e i o u A E I O U)

def double_consonants(str)
  arr = str.chars
  new_arr = []

  arr.each do |char|
    if VOWELS.include?(char) == false && ALPHABET.include?(char)
      new_arr << char * 2
    else
      new_arr << char
    end
  end
  new_arr.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
