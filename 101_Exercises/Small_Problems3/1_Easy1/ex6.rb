def reverse_words(a_string)
  if a_string.chars.length > 5
    a_string.split.map{|word| word.reverse}.join(" ")
  end
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS