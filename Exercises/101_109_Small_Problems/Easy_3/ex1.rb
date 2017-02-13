puts "Enter the 1st number:"
first_num = gets.chomp.to_i

puts "Enter the 2nd number:"
second_num = gets.chomp.to_i

puts "Enter the 3rd number:"
third_num = gets.chomp.to_i

puts "Enter the 4th number:"
fourth_num = gets.chomp.to_i

puts "Enter the last number:"
last_num = gets.chomp.to_i

arr = []
arr.push(first_num, second_num, third_num, fourth_num)

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end
