puts "Please write word or multiple words:"
answer = gets.chomp.strip

counter = 0
answer.each_char do |char|
  if char == ' '
    next
  else
    counter += 1
  end
  counter
end

puts "There are #{counter} characters in #{answer}."
