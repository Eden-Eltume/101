def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def prompt(msg)
  puts ">>#{msg}"
end

numerator = nil
loop do
  prompt "Please enter the numerator:"
  numerator = gets.chomp

  break if valid_number?(numerator)

  prompt "Invalid input. Only integers are allowed."
end

denominator = nil
loop do
  prompt "Please enter the denominator:"
  denominator = gets.chomp

  if denominator.to_i == 0
    prompt "Invalid input. A denominator of 0 is not allowed."
  else
    break if valid_number?(denominator)
    prompt "Invalid input. Only integers are allowed."
  end
end

result = numerator.to_i / denominator.to_i
prompt " #{numerator} divided by #{denominator} is #{result}."
