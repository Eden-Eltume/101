def substrings_at_start(str)
    arr = []
    str.length.times do |t|
      arr << str[0..t]
    end
    arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
