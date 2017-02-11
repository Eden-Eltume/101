
puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f


def tip_calculator(bill, tip_percentage)
  tip = (bill * tip_percentage/100).round(2)
  total = (bill + tip).round(2)
  puts "The tip is #{tip}"
  puts "The total is #{total}"
end

tip_calculator(bill, tip_percentage)
