# Ex 1
loop do
  puts 'Just keep printing...'
  break
end

# Ex 2
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# Ex 3
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Ex 4
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
  puts "Wrong answer. Please answer yes."
end

# Ex 5
say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# Ex 6
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# Ex 7
count = 1

until count > 10
  puts count
  count += 1
end

# Ex 8
numbers = [7, 9, 13, 25, 18]
count = 0
until count == numbers.size
  puts numbers[count]
  count += 1
end

# Ex 9
for i in 1..100
  if i.odd?
    puts i
  end
end

# Ex 10
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for friend in friends
  puts "Hello, #{friend}!"
end
