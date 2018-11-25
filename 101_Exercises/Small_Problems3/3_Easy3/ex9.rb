def palindrome?(text)
  text == text.reverse
end

ALPHA_NUMERICS = ('a'..'z').to_a + ('0'..'9').to_a

def real_palindrome?(text)
  text_array = text.downcase.split("").keep_if{|char| ALPHA_NUMERICS.include?(char) }
  palindrome?(text_array.join)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false