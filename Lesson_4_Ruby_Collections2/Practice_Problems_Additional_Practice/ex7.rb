=begin
statement = "The Flintstones Rock"

letters_hash = {}
statement.gsub!(/\s/, "")

counter = 0
loop do
break if counter == statement.length
current_letter = statement[counter]
letters_hash[current_letter] = statement.count(current_letter)
counter += 1
end

p letters_hash
=end

statement = "The Flintstones Rock"
statement.gsub!(/\s/, "")

hsh = {}

statement.each_char{ |char| hsh[char] = statement.count(char) }

p hsh

