def find_fibonacci_index_by_length(digits)
    array = [1, 1]
    loop do
        array << array[-1] + array[-2]
        break if array.last.to_s.size == digits
    end
    return array.size
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
