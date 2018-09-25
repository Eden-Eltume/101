def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "Please enter a positive or negative integer:"
  input1 = gets.chomp

  puts "Please enter a positive or negative integer:"
  input2 = gets.chomp

  if input1.to_i * input2.to_i > 0
    puts "Sorry. One integer must be positive, one must be negative."
  elsif valid_number?(input1) && valid_number?(input2)
    result = input1.to_i + input2.to_i
    puts "#{input1} + #{input2} is #{result}"
    break
  else
    puts "Invalid input only non-zero integers are allowed."
  end
end
