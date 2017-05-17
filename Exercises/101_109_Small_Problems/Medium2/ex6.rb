def triangle(d1, d2, d3)
  if d1 <= 0 || d2 <= 0 || d3 <= 0
    :invalid
  elsif (d1 + d2 + d3) != 180
    :invalid
  elsif d1 < 90 && d2 < 90 && d3 < 90
    :acute
  elsif d1 == 90 || d2 == 90 || d3 == 90
    :right
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
