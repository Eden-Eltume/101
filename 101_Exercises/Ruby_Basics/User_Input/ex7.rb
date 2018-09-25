PASSWORD = "Password"
USERNAME = "Username"

loop do
  puts "Please enter username:"
  username_answer = gets.chomp

  puts "Please enter your password:"
  password_answer = gets.chomp

  if username_answer != USERNAME || password_answer != PASSWORD
    puts "Authorization failed!"
  end

  break if username_answer == USERNAME && password_answer == PASSWORD

end

puts "Welcome"
