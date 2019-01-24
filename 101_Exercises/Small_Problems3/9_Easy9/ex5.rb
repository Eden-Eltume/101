def uppercase?(str)
 letters_only = str[/[a-zA-Z]+/]
  if str.empty?
    true
  else
    letters_only.chars.all?{|char| char == char.upcase}
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true