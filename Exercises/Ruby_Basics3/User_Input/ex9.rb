loop do
  puts ">> How many output lines do you want? Enter a number >= 3: (Q to quit)"
  answer = gets.chomp
  lines = answer.to_i
  if answer.downcase == "q"
    break
  elsif lines < 3
    puts "That's not enough lines!"
  else
    lines.times do
      puts "Launch School is the best!"
    end
  end
end
