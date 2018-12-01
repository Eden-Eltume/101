# Algo/Aproach:
# 1. Take string inputs and convert ito to array
# 2. Sort by string length
# 3. Add a duplicate of the first element of the array
# 4. Convert the array back to a string

def short_long_short(string1, string2)
  string_array = [string1, string2]
  string_array.sort_by!{|string| string.length }
  string_array << string_array[0]
  string_array.join
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"