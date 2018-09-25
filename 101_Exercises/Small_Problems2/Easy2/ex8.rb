puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

def sum(int)
  sum = 0
  (1..int).each do |num|
    sum += num
  end
  sum
end

def product(int)
  product = 1
  (1..int).each do |num|
    product *= num
  end
  product
end

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

if answer == 's'
  puts "The sum of the integers between 1 and #{int} is #{sum(int)}."
elsif answer == 'p'
  puts "The product of the integers between 1 and #{int} is #{product(int)}"
else
  puts "Unknown operation."
end
