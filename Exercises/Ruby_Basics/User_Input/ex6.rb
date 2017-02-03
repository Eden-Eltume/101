PASSWORD = "Password"
loop do
  puts "What is the password?"
  answer = gets.chomp
  puts "That is not the password."
  if answer == PASSWORD
    puts "Welcome in!"
    break
  end
end
