=begin
Problem - Titlelize a string
Example - "four score and seven" -> "Four Score And Seven"
Data Structure - string to new string
Approach - SPLIT the string into an array
            -CAPITALIZE the first letter of each word in the array
            - Join & return the array
          END
Code
=end

def word_cap(string)
  result = string.downcase.split(" ").map do |word|
    if string.index(word) == 0
      word[0].capitalize + word[1..-1]
    else
      " " + word[0].capitalize + word[1..-1]
    end
  end
  result.join
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'