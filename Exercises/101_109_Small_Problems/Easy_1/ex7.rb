def stringy(int)
  bits = ['1','0']
  bits_array = []
  int.times do |time|
    if time.odd?
      bits_array << bits[1]
    else
      bits_array << bits[0]
    end
  end
  bits_array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
