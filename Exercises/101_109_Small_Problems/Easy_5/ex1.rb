def ascii_value(string)
  ascii_sum = 0
  string.each_char {|char| ascii_sum += char.ord}
  ascii_sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
