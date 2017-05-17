=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and
whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd),
97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).
=end

def featured(int)
  counter = 0
  num = []
  loop do
    counter += 7
    num << counter
    if counter > int && counter.odd?
      if counter.to_s.split('') == counter.to_s.split('').uniq
        break
      end
    elsif counter > 1_023_456_987
      num << 1_023_456_988
      break
    end
  end
  if num.last <= 1_023_456_987
    num.last
  else
    "There is not possible number that fulfills those requirements"
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
