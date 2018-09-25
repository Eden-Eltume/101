puts "Enter the first number:"
first_num = gets.chomp.to_i

puts "Enter the second number:"
second_num = gets.chomp.to_i

def prompt(num1, num2, op, result)
  puts "==> #{num1} #{op} #{num2} = #{result}"
end

add = first_num + second_num
subtract = first_num - second_num
multiply = first_num * second_num
divide = first_num / second_num
remainder = first_num % second_num
power = first_num ** second_num

prompt(first_num, second_num, '+', add)
prompt(first_num, second_num, '-', subtract)
prompt(first_num, second_num, '*', multiply)
prompt(first_num, second_num, '/', divide)
prompt(first_num, second_num, '%', remainder)
prompt(first_num, second_num, '**', power)
