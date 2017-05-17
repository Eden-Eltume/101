=begin
equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
=end

def triangle(side1, side2, side3)
  if side1 <= 0 || side2 <= 0 || side3 <=0
    :invalid
  elsif side1 > (side2 + side3) || side2 > (side1 + side3) || side3 > (side1 + side2)
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3 || side3 == side1
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
