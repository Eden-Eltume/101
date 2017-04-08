puts "Enter the 1st number:"
first = gets.chomp.to_i

puts "Enter the 2nd number:"
second = gets.chomp.to_i

puts "Enter the 3rd number:"
third = gets.chomp.to_i

puts "Enter the 4th number:"
fourth = gets.chomp.to_i

puts "Enter the 5th number:"
fifth = gets.chomp.to_i

puts "Enter the last number:"
last = gets.chomp.to_i

arr = []
arr << first
arr << second
arr << third
arr << fourth
arr << fifth

if arr.include?(last)
  puts "The number #{last} appears in #{arr}"
else
  puts "The number #{last} does not appear in #{arr}"
end
