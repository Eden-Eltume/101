current_year = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_to_retire = gets.chomp.to_i

years_to_retire = age_to_retire - age
retire_year = years_to_retire + current_year

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_to_retire} years of work to go!"
