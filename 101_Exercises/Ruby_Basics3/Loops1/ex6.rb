numbers = []

count = 0
while count < 5
  99.times do |num|
    numbers << num
  end
  puts numbers.sample
  count += 1
end
