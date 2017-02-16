ALPHABET = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

def word_sizes(sentence)
  hsh = Hash.new(0)
  split_sentence_array = sentence.split()
  split_sentence_array.each do |word|
    word.each_char do |char|
      clean_word = word.delete('^A-Za-z')
      hsh[word.size] += 1
    end
  end
  hsh
end

p word_sizes('Four score and seven.')

# [^a-zA-z] is a regex that means any one character except a-z and A-Z.
