def sequence(num)
  arr = []
  1.upto(num){|i| arr << i}
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]