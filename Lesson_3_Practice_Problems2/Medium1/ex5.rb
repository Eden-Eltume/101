limit = 15

def fib(first_num, second_num)
  while second_num < limit # The limit is not within scope and is local to the method.
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# He forgot to pass the limit as a parameter.