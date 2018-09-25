def palindromic_number?(int)
  int_string = int.to_s.reverse.to_i
  if int_string == int
    true
  else
    false
  end
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
