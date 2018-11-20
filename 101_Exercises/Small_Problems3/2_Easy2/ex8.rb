=begin
puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

def calc(num, op)
  sum = 0
  product = 1

  if op == 's'
    1.upto(num) do |number|
      sum += number
    end
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  elsif op == 'p'
    1.upto(num) do |number|
      product *= number
    end
    puts "The product of the integers between 1 and #{num} is #{product}."
  end
end

calc(number, op)
=end

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

def calc_sum(num)
  (1..num).reduce(:+)
end

def calc_product(num)
  (1..num).reduce(:*)
end

if op == 's'
  sum = calc_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif op == 'p'
  product = calc_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
end
    