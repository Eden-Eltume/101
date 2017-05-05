PASSWORD = "SecreT"

loop do
  puts "Please enter your password?"
  pass_attempt = gets.chomp

  if pass_attempt == PASSWORD
    puts "Welcome!"
    break
  else
    puts "Invalid password! Try again!"
  end
end
