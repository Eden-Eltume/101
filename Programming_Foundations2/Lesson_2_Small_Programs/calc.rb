puts "Welcome to my calculator!"
puts ">> What's the first number?"
first_number = gets.chomp.to_f	

puts ">> What's the second number?"
second_number = gets.chomp.to_f

puts ">> What operation would you like to perform? (+, -, *, or /)"
choice = gets.chomp

case choice
when '+'
	puts "The result of adding them is #{first_number + second_number}."
when '-'
	puts "The result of subtracting them is #{first_number - second_number}."
when '*'
	puts "The result of multiplying them is #{first_number * second_number}."
when '/'
	puts "The result of dividing them is #{first_number / second_number}."
else
	puts "Invalid operation!"
end