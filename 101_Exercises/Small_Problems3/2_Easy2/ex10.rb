array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. 
When that first loop completes, both arrays not only contain the same values, they contain the same String objects.
If you modify one of those Strings, that modification will show up in both Arrays. 
end