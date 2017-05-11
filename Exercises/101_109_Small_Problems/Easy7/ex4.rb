def swapcase(str)
  new_str = ''
  counter = 0
  loop do
    break if counter == str.length
    current_letter = str[counter]
    if current_letter == current_letter.upcase
      new_str << current_letter.downcase
    elsif current_letter == current_letter.downcase
      new_str << current_letter.upcase
    else
      new_str << current_letter
    end
    counter += 1
  end
  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
