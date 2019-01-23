
def double_consonants(str)
  doubled_consonants = str.chars.map do |char|
    if char =~ /[^a-zA-Z]/
      char
    elsif "aeiou".include?(char)
      char
    else
      char * 2
    end 
  end
  doubled_consonants.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""