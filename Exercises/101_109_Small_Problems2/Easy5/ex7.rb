def word_sizes(sentence)
  counts = Hash.new 0

  sentence.split.each do |word|
    clean_words = word.delete('^a-zA-Z')
    counts[clean_words.length] += 1
  end

  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
