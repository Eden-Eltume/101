require 'date'

puts "What is your  age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_to_retire = gets.chomp.to_i

current_year = Date.today.year

retirement_year = current_year.to_i + (age_to_retire - age)

years_to_retirement = retirement_year - current_year.to_i

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years of work to go!"