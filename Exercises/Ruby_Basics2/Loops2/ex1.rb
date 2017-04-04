count = 1

def odd_or_even(number)
  if number.odd?
    return 'odd'
  elsif number.even?
    return 'even'
  end
end

loop do
  puts "#{count} is #{odd_or_even(count)}!"
  count += 1
  break if count > 5
end
