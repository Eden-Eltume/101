puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

SQ_FT_TO_METER = 10.7639

area_in_meters = sprintf("%.2f", (length * width))
area_in_feet = sprintf("%.2f", (length * width * SQ_FT_TO_METER))

puts "The area of the room is #{area_in_meters} meters (#{area_in_feet} sq. feet)."