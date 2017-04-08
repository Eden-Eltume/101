puts "Please write word or multiple words:"
answer = gets.chomp

answer_without_spaces = answer.gsub(' ', '')

puts "There are #{answer_without_spaces.length} characters in #{answer}"
