def short_long_short(string1, string2)
  arr = []
  if string1.length < string2.length
    arr << string1
    arr << string2
    arr << string1
  else
    arr << string2
    arr << string1
    arr << string2
  end
  arr.join
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
