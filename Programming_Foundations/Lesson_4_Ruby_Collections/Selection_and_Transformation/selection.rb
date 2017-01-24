alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0
selected_chars = ''

loop do
  current_char = alphabet[counter]
  if current_char == 'g'
    selected_chars << current_char
  end
  counter += 1
  break if counter == alphabet.size
end

puts selected_chars
