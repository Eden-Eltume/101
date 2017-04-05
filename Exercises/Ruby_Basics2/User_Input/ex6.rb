PASSWORD = 'SecreT'

loop do
  puts "Please enter your password:"
  pass_input = gets.chomp
  if pass_input == PASSWORD
    puts "Welcome!"
    break
  else
    puts "Invalid password!"
  end
end
