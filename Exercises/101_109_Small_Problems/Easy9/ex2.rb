def double_number?(num)
  str = num.to_s
  midpoint = str.length / 2

  left_half = str[0..midpoint-1]
  right_half = str[midpoint..-1]

  if str.length > 1 && left_half == right_half
    true
  else
    false
  end
end


def twice(int)
  if double_number?(int)
    int
  else
    int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
