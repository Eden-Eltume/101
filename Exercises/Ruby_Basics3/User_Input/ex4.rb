loop do
  puts "Do you want to print something"
  answer = gets.chomp

  if answer.downcase == "y"
    puts "Something"
    break
  elsif answer.downcase == "n"
    break
  else
    puts "Invalid input! Please enter y or n."
  end
end
