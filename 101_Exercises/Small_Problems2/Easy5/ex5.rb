def cleanup(str)
  letters_spaces = str.gsub(/[^a-zA-Z]/, ' ')
  letters_spaces.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
