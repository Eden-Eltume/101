NUMERIC_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  NUMERIC_WORDS.each do |number|
    str = str.gsub(number, NUMERIC_WORDS.index(number).to_s)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Other solution
=begin
HSH = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
def word_to_digit(str)
  arr = str.split(" ")
  new_arr = []
  arr.each do |word|
    if HSH.include?(word)
      new_arr << HSH[word]
    elsif word.end_with?('.') && HSH.include?(word[0..-2])
      new_arr << (HSH[word.delete('.')].to_s + '.')
    else
      new_arr << word
    end
  end
  new_arr.join(' ')
end
=end
