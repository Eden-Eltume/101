colors = ['red', 'yellow', 'purple', 'green']

counter = 0
loop do
  puts "I'm the color #{colors[counter]}!"
  counter += 1
  break if colors.size == counter
end
