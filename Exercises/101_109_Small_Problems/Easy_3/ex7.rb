def oddities(a)
ax = []
a.each_index do |x|
  if x.even?
    ax << a[x]
  end
end
ax
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
