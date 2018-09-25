puts "What's the length of the room (in meters)?"
length = gets.chomp.to_i

puts "What's the width of the room (in meters)?"
width = gets.chomp.to_i

area_meters = length * width
meters_to_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} square meters or #{meters_to_feet} square feet."
