=begin
Problem - Ask user for 6 numbers and determine if the last number appears among the first 5
Example - Here are the numbers 1,2,3,4,5,5. Is 5 among the first 5 numbers mentioned?
Data Structure - Will save the integer user inputs to an array
Algorithm/Approach:
1. Have a loop to ask the user to enter all 6 numbers.
2. Save each number into an array
3. Check if array containts the last number
4. State whether it does or not
Code:  
=end

numbers_array = []
counter = 0
suffixes = ["1", "2", "3", "4", "5"].zip(["st","nd", "rd", "th", "th"])
while numbers_array.size < 5
  puts "Enter the " + suffixes[counter][0] + suffixes[counter][1] + " number:"
  each_answer = gets.chomp.to_i
  numbers_array <<  each_answer
  counter += 1
end

puts "Enter the last number: "
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}."
else
  puts "The numbers #{last_number} does not appear in #{numbers_array}."
end