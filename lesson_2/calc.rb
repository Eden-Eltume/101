puts "Enter the first number."
fnum = gets.chomp.to_i

puts "Enter the operation (+, -, *, /)."
op = gets.chomp

puts "Enter the second number"
snum = gets.chomp.to_i

case op
  when '+'
    puts "#{fnum + snum}"
  when '-'
    puts "#{fnum - snum}"
  when '*'
    puts "#{fnum * snum}"
  when '/'
    puts "#{fnum / snum}"
end
