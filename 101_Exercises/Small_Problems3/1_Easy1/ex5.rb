def reverse_sentence(sentence)
    arr = []
    sentence.split.reverse_each{|word| arr << word}
    arr.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'