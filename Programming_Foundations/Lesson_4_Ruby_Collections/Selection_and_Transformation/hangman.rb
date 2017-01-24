def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end

  selected_chars
end

words = %w(hi bye see)
random_words = words.sample

def select_word(word_list)
  selected_word = ''
  counter = 0
  loop do
    break if counter == word_list.size

    current_word = word_list[counter]
    selected_word << current_word

    counter += 1
  end
  selected_word
end

the_word = select_word(random_words)

puts "Welcome to hangman. You have 6 guesses (head, left/right arm, body & right/left leg)."
puts "Try to guess the word, one letter at a time."
answer = gets.chomp.strip.to_s

search_for_letter = select_letter(the_word, answer)

# incomplete hangman game
