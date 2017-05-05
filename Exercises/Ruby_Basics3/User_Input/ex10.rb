def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "Please enter a positive or negative integer:"
  answer1 = gets.chomp

  puts "Please enter a positive or negative integer:"
  answer2 = gets.chomp

  if valid_number?(answer1) == false || valid_number?(answer2) == false
    puts "Invalid input. Only non-zero integers are allowed."
  elsif answer1.to_i * answer2.to_i < 0
    result = answer1.to_i + answer2.to_i
    puts "The answer is #{result}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
  end
end
