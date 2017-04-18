def sequence(num)
  arr = []
  num.times do |i|
    arr << i + 1
  end
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1,2,3]
p sequence(1) == [1]
