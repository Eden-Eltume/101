def ascii_value(str)
  sum = 0
  counter = 0

  loop do
    break if counter == str.length
    current_char = str[counter]
    sum += current_char.ord
    counter += 1
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
