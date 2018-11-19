def stringy(number)
  bits = ["1", "0"]
  result = ""

  counter = 1
  loop do 
    break if counter > number
    if counter.odd?
      result << bits.first
    elsif counter.even?
      result << bits.last
    end
    counter += 1
  end
  result 
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'