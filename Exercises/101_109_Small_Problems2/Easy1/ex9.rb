def sum(nums)
  total = 0
  nums.to_s.chars.each do |num|
    total += num.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
