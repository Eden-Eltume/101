def center_of(str)
  len = str.length
  if len.odd?
    str[len/2]  
  else
    middle = len/2
    str[middle-1..middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'