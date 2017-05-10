def crunch(str)
  arr = str.split('')
  new_arr = []

  counter = 0
  loop do
    break if counter == arr.size
    current_el = arr[counter]
    following_el = arr[counter + 1]

    if current_el != following_el
      new_arr << current_el
    end

    counter += 1
  end
  new_arr.join('')
end

p crunch('ddaaiillyy ddoouubbllee')  == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# https://ruby-doc.org/core-2.2.0/String.html#method-i-squeeze
