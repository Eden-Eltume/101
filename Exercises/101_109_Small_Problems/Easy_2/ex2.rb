SQMETERS_TO_SQFEET = 10.7639

puts "What is the length in meters?"
length_string = gets.chomp

puts "What is the width in meters?"
width_string = gets.chomp

def area(length, width)
  product = (length.to_f * width.to_f).round(2)
  product_ft = (product * SQMETERS_TO_SQFEET).round(2)
  puts "The area of the room is #{product} sq. meters #{product_ft} sq. feet."
end

area(length_string, width_string)
