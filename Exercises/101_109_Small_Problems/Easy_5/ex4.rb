def swap(str)
  arr = str.split(' ').map do |word|
    if word.size == 1
      word
    else
      first = word[0]
      last = word[-1]
      body = word[1..-2]
      word = last + body + first
    end
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
