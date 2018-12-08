=begin
Problem - given a sring return a hash that show the size length of each word and how many words of that length there are in the string
Example - word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
Data structure - - string argument
                 - array of words
                 - hash
Algo -
     - split the string into a list of words
     - initalize a hash of 0
     - find out the length of each word in the list
      -itrate over the list
      - assign the size of the current word as the key to the empty hash
      - add 1 as the value for current word
     -return the hash
Code
=end

def word_sizes(string)
  words = string.split

  frequencies = Hash.new(0)
  words.each{|word| frequencies[word.length] += 1 }
  frequencies
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
