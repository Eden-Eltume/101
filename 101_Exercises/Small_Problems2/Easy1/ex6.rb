def reverse_words(sentence)
  split_sentence = sentence.split(' ')
  reversed_words = []
  for word in split_sentence do
    if word.size >= 5
      reversed_words << word.reverse
    else
      reversed_words << word
    end
  end
  reversed_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
