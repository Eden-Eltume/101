def palindrome?(input)
  if input.reverse == input
    true
  else
    false
  end
end

def real_palindrome?(input)
  new_input = input.downcase.delete('^a-z0-9')
  palindrome?(new_input)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
