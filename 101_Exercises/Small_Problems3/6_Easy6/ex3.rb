=begin
Problem - find index of the first Fibonacci number that has the numer of digits specified as an argument
Example - The index of the first number (13) with 2 digits in the Fibonacci series is 7
Data structure - Use numbers
Approach - Write two methods: one for fibonacci series and the other to find the index by length
          1. run the first method until the answer (return value) is the number of digits in the argument of the second method
          2. Count the number of times the function had to be ran. That will be the index
Code
=end

def fib(number)
  if number < 2
    number
  else
    fib(number - 1) + fib(number - 2)
  end
end

def find_fibonacci_index_by_length(digits)
  counter = 2
  result = []

  loop do
    fib_result = fib(counter)

    result << fib_result

    break if fib_result.to_s.length >= digits
    counter += 1
  end

  result.size + 1
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847