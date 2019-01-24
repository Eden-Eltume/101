def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3

  case average
  when 90..100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  when 60...79
    "D"
  else
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"