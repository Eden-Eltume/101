def sequence(int)
  arr = []
  1.upto(int) do |n|
    arr << n
  end
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
