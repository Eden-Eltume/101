# My solution
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
hsh.each do |key, arr|
  arr.each do |value|
    value_chars = value.chars
    counter = 0
    selected_vowels = ''
    loop do
      break if counter == value_chars.size
      current_char = value_chars[counter]
      if 'aeiouAEIOU'.include?(current_char)
        selected_vowels << current_char
      end
      counter += 1
    end
    print selected_vowels
  end
end

# LS solution
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
