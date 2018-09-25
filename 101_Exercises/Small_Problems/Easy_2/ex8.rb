puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

def sum(integer)
  sum = 0
  (1..integer).each do |num|
    sum += num
  end
  sum
end

def product(integer)
  product = 1
  (1..integer).each do |num|
    product *= num
  end
  product
end

case operation
when 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum(integer)}."
when 'p'
  puts "The product of the integers between 1 and #{integer} is #{product(integer)}."
end
