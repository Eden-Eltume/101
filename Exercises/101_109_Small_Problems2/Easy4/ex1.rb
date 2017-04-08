def short_long_short(string1, string2)
  new_string = ''
  if string1.length > string2.length
    new_string = string2 + string1 + string2
  else
    new_string = string1 + string2 + string1
  end
end
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
