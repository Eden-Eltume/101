def greet(name)
  if name.include?("!")
    formatted_name = name.upcase.chop
    puts "HELLO #{formatted_name}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

puts "What is your name?"
name = gets.chomp

greet(name)