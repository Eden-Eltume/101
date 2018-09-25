def balanced?(str)
  parens = 0
  str.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ")"
    break if parens < 0
  end
  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
