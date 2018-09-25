def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "Please enter the numerator:"
  numerator = gets.chomp
  valid_numerator = valid_number?(numerator)

  puts "Please enter the denominator:"
  denominator = gets.chomp
  valid_denominator = valid_number?(denominator)

  if denominator == "0"
    puts "A denominator of 0 is not allowed."
  elsif valid_numerator == false || valid_denominator == false
    puts "Invalid input! Only integers are allowed."
  else
    result = numerator.to_i / denominator.to_i
    puts "The answer is #{result}"
    break
  end
end
