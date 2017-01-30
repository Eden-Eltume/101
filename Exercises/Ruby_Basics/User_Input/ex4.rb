puts "Do you to print something? (y/n)"
answer = gets.chomp

if answer == 'y'
  puts "something"
elsif answer == 'n'
  false
else
  puts "Invalid input! Enter y or n."
end
