=begin
right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and
all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.
=end

def triangle(d1, d2, d3)
  sum = d1 + d2 + d3
  if sum == 180 && d1 > 0 && d2 > 0 && d3 > 0
    if d1 == 90 || d2 == 90 || d3 == 90
      :right
    elsif d1 > 90 || d2 > 90 || d3 > 90
      :obtuse
    else
      :acute
    end
  else
    :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
