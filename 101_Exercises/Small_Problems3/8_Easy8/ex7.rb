def repeater(str)
  double_letters = str.chars.map{|letter| letter * 2}
  double_letters.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''