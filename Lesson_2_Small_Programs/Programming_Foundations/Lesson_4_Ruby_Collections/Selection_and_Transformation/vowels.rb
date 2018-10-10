alphabet = 'abcdefghijklmnopqrstuvwxyz'

def select_vowels(str)
  counter = 0
  selected_chars = ''
  loop do
    current_char = str[counter]
    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end
    counter += 1
    break if counter == str.size
  end
  selected_chars
end

puts select_vowels(alphabet)
