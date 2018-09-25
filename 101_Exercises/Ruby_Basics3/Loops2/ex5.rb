numbers = []

counter = 0
loop do
  break if counter == 5
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  counter += 1
end
puts numbers
