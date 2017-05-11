def penultimate(str)
  arr = str.split(' ')
  arr[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
