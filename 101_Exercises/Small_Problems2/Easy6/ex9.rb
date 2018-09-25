def include?(arr, item)
  arr.each do |el|
    return true if el == item
  end
  false
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# Could of use any? method
