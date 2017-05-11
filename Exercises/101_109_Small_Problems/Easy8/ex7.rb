def repeater(str)
  arr = str.chars
  new_arr = []
  arr.each do |char|
    new_arr << char * 2
  end
  new_arr.join('')
end
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
