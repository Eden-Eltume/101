=begin
P- return the second to last word in a string
E- 'last word' -> 'last'
D- string to string
A- split the string with space as the delimiter
 - index reference the second to element
C
=end

def penultimate(string)
  string.split(" ")[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'