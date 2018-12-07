arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

result = arr.map do |sub_array|
  sub_array.sort{|first_el, second_el| second_el <=> first_el }
end

p result