def reverse_sentence(sentence)
  words = []
  sentence.split(' ').each do |word|
    words.push(word)
  end
  sorted_words = words.sort{|a,b| b <=> a }
  sorted_words.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
