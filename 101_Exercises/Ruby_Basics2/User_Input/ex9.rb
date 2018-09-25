number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit)'
  answer = gets.chomp
  number_of_lines = answer.to_i
  break if answer.downcase == 'q'
  puts ">> That's not enough lines."

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end
