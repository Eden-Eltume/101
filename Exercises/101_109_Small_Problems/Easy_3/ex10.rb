def palindromic_number?(integer)
  int_to_string = integer.to_s
  if integer == int_to_string.to_i
    true
  else
    false
  end
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
