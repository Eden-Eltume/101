=begin
P- given a number return twice that number unless it's left and right side are the same
E- 37 -> 74 and 103103 -> 103103
D- number to number
A-
CONVERT the number to a list of digits
  -IF length of the list is even AND the first half is equal to the second half
    -RETURN the number
  -ELSE
    MULTIPLY the number by 2
  END
C
=end

def twice(number)
  num_array = number.digits
  array_length = num_array.length
  middle = array_length / 2

  if array_length.even? && num_array[0...middle] == num_array[middle..-1]
    number
  else
    number * 2
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