loop do
  puts "Do you want me to print something? (y or n)"
  answer = gets.chomp.downcase

  if answer == 'y'
    puts "Something"
    break
  elsif  answer == 'n'
    break
  else
    puts "Invalid input. Enter y or n."
  end
end
