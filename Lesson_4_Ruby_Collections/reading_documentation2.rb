# Ex 1
result = "xyz".upcase

# Ex 2
a = %w(a b c d e)
result = a.insert(3, 5, 6, 7)
print result

# Ex 3
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# puts ["abc" "def" "ghi,jkl" "mno" "pqr,stu" "vwx" "yz"]
puts s.split(',').inspect
# puts ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
puts s.split(',', 2).inspect
#s.split(',', 2).inspect (splits at argument of ',' and gives 2 strings)
# will output ["abc def ghi", "jkl mno pqr,stu vwx yz"]

# Ex 4
require 'date'
puts Date.new
# -4712-01-01

puts Date.new(2016)
# 2016-01-01

puts Date.new(2000, 5)
# 2016-05-01

puts Date.new(2000, 5, 13)
# 2016-05-13

# Ex 5
a = [1, 4, 8, 11, 15, 19]
result = a.bsearch{|element| element > 8}
puts result

# Ex 6
 puts a.fetch(7)
# IndexError: index 7 outside of array bounds: -5...5

 puts a.fetch(7, 'beats me')
# beats me

 puts a.fetch(7) { |index| index**2 }
# 49

# Ex 7
5
8

# Ex 8
s = 'abc'
puts s.public_methods(false).inspect

# Ex 9
a = [5, 9, 3, 11]
puts a.min(2)

# Ex 10
# http://ruby-doc.org/stdlib-2.4.0/libdoc/yaml/rdoc/YAML.html
