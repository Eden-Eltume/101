names = ['Sally', 'Joe', 'Lisa', 'Henry']

counter = 0
loop do
  break if counter == names.size
  current_el = names[counter]
  puts "#{current_el}"
  counter += 1
end
