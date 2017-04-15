def word_cap(str)
  word_arr = str.split.map do |word|
    word.capitalize
  end
  word_arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
