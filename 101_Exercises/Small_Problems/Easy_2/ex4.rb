YEAR = 2017

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

def retire_calculator(age, retire_age)
  years_left = retire_age - age
  retired_year = YEAR + years_left
  puts "It's #{YEAR}. You will retire in #{retired_year}.\nYou have only #{years_left} years of work to go!"
end

retire_calculator(age, retire_age)
