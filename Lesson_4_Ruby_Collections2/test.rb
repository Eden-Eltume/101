def find_greater_than_2()
  [1,2,3].all? do |num|
    num > 2
  end
end

p find_greater_than_2