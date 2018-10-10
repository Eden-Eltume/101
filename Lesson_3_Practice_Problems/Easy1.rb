# Question 1
numbers = [1, 2, 2, 3]

# Question 2
=begin
  what is != and where should you use it?
  It means not equal. You use it as operator to compare values.

  put ! before something, like !user_name
  I get a false.

  put ! after something, like words.uniq!
  It's destructive. It mutates the caller.

  put ? before something
  It outputs the variable name.

  put ? after something
  I get a no method error.

  put !! before something, like !!user_name
  I get true
=end

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# Question 4
numbers = [1, 2, 3, 4, 5]

# Will delete value at index 1
numbers.delete_at(1)

# Will delete the value == 1
numbers.delete(1)

# Question 5
if (10..100).include?(CONSTANT)
  puts "It does."
else
  puts "No it does not."
end

# Question 6
famous_words = "seven years ago..."
famous_words.insert(0, "Four score and ")
puts famous_words

# Question 7
42

# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
puts flintstones.inspect

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney_array = []
flintstones.each do |key, value|
  if key == "Barney"
    barney_array.push(key)
    barney_array.push(value)
  else
    next
  end
end

puts barney_array.inspect
