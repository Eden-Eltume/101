loop do
  puts "How many output lines do you want? Enter a number >= 3:"
  num_lines = gets.chomp.to_i

  if num_lines >= 3
    num_lines.times do
      puts "Launch School is the best!"
    end
    break
  else
    puts "That's not enough lines."
  end
end
