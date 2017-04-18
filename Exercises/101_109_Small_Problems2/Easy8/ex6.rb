def fizzbuzz(num1, num2)
  (num1..num2).each do |i|
    if i % 3 == 0 && i % 5 != 0
      puts 'Fizz'
    elsif i % 5 == 0 && i % 3 != 0
      puts 'Buzz'
    elsif i % 3 == 0 && i % 5 == 0
      puts 'FizzBuzz'
    else
      puts i
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
