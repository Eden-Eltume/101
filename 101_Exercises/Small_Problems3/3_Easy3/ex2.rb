=begin
Problem - take two numbers and output the result of all the operations on it
Example - 23 + 17 = 40 or 23 % 16 = 6
Data structure - Integers
Algorithm/Approach:
1. Define a method take takes two integers
2. perform the operations on the two integers
3. Format the result
Code:
=end

puts "Enter the first number"
first_num = gets.chomp.to_i

puts "Enter the second number"
second_num = gets.chomp.to_i


def perform_operations(first_num, second_num)
  num1_string = first_num.to_s
  num2_string = second_num.to_s

  puts "==> " + "#{num1_string } " + "+ " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:+).to_s
  puts "==> " + "#{num1_string } " + "- " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:-).to_s
  puts "==> " + "#{num1_string } " + "* " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:*).to_s
  puts "==> " + "#{num1_string } " + "/ " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:/).to_s
  puts "==> " + "#{num1_string } " + "% " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:%).to_s
  puts "==> " + "#{num1_string } " + "** " + "#{num2_string }" + "= " + [first_num, second_num].reduce(:**).to_s
end

perform_operations(first_num, second_num)

=begin
# What I was trying to do at first but couldn't because I didn't know about the kernel#eval method

puts '==> Enter the first number:'
first_number = gets.chomp

puts '==> Enter the second number:'
second_number = gets.chomp

operators = %w(+ - * / % **)

operators.each do |operator|
  result = eval(first_number + operator + second_number)
  puts "==> #{first_number} #{operator} #{second_number} = #{result}"
end

=end