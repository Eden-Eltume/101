def triangle(num)
  str = []
  for i in 1..num
    str << '*' * i
  end
  str.each { |n| puts n.rjust(num)}
end

triangle(5)
triangle(9)

# n is the spaces to the left and num is total length of stars
