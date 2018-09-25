USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts "Please enter username:"
  username_try = gets.chomp.downcase

  puts "Please enter your password:"
  password_try = gets.chomp

  if username_try == USERNAME && password_try == PASSWORD
    puts "Welcome!"
    break
  else
    puts "Authorization failed!"
  end
end
