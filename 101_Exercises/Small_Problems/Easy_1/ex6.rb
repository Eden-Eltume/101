def reverse_words(words)
  split_words = words.split
  words_array = []

   split_words.each do |word|
    if word.length >= 5
      word.reverse!
      words_array << word
    else
      words_array << word
    end
  end
  words_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
