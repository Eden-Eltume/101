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

p substrings('abcde') # Not formatted neatly like below

=begin
== [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end
