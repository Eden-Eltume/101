def ascii_value(string)
  ascii_array = string.split("").map{|char| char.ord}
  ascii_array.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0