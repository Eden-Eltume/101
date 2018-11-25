puts "Please write one or multiple words: "
text = gets.chomp

text_array = text.split(" ")

def find_total_text_length(text_array)
  total_length = 0
  text_array.each do |word|
    total_length += word.length
  end
  total_length
end

total_text_length = find_total_text_length(text_array)

puts "There are #{total_text_length} characters in #{text}."