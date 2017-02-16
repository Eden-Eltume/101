ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def cleanup(word)
  word_arr = []
  word.each_char do |char|
    if ALPHABET.include?(char)
      word_arr << char
    elsif word.count(char) > 1
      word_arr << ' '
    else
      word_arr << ' '
    end
  end
  word_arr.join('').squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '

# https://ruby-doc.org/core-2.4.0/String.html#method-i-squeeze
