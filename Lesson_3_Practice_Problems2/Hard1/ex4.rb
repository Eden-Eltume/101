def is_an_ip_number?(word)
  word.to_i < 254
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  dot_count = input_string.count(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  if dot_count == 3
    true
  else
    false
  end
end


p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")