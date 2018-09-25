def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |i|
    if i % 3 == 0 && i % 5 == 0
       result << "FizzBuzz"
    elsif i % 3 == 0
       result << "Fizz"
    elsif i % 5 == 0
       result << "Buzz"
    else
      result << i
    end
  end
  result
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
