USERNAME = "admin"
PASSWORD = "SecreT"

loop do
  puts "Please enter your username?"
  username = gets.chomp

  puts "Please enter your password?"
  pass_attempt = gets.chomp

  if username == USERNAME && pass_attempt == PASSWORD
    puts "Welcome!"
    break
  else
    puts "Authorization failed! Try again!"
  end
end
