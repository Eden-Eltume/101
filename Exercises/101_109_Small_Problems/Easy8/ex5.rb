def substrings_at_start(str)
  arr = []
  str.length.times do |t|
    arr << str[0..t]
  end
  arr
end

def substrings(str)
  results = []
  (0...str.length).each do |start_index|
    this_substring = str[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def palindromes(str)
  ss = substrings(str)
  palindrome_arr = []
  for el in ss do
    if el.length > 1 && el == el.reverse
      palindrome_arr << el
    end
  end
  palindrome_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
