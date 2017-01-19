# Ex 1
count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
    count += 1
  else
    puts "#{count} is even!"
    count += 1
  end
  break if count > 5
end

# Ex 2
loop do
  number = rand(100)
  puts number
  if number.between?(0, 10)
    break
  end
end

# Ex 3
process_the_loop = [true, false].sample
loop do
  if process_the_loop
    puts "The loop was processed!"
  else
    puts "The loop wasn't processed!"
  end
  break
end

# Ex 4
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# Ex 5
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

# Ex 6
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.shift
  break if names.empty?
end

# Ex 7
5.times do |index|
  if index == 2
    break
  else
    puts index
  end
end

# Ex 8
number = 0

until number == 10
  number += 1
  next if number.odd?
    puts number
end

# Ex 9
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  puts "a is #{number_a}"
  number_b += rand(2)
  puts "b is #{number_b}"
  next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end

# Ex 10
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

count = 0
while count < number_of_greetings
  puts greeting
  count += 1
end
