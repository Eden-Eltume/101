def multisum(num)
  multiples_3_and_5 = []
  sum = 0

  (1..num).each do |n|
    if n % 3 == 0 || n % 5 == 0
      multiples_3_and_5 << n
    end
  end

  multiples_3_and_5.map do |mult|
    sum += mult
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
