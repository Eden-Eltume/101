def repeater(str)
  new_str = ''
  counter = 0
  loop do
    break if counter == str.length
    current_char = str[counter]
    new_str << current_char * 2
    counter += 1
  end
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
