VOWELS = "aeiou"

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.flatten.each do |word|
  word.chars.each{|char| puts char if VOWELS.include?(char)}
end