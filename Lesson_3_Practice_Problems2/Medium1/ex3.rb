def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  rescue ZeroDivisionError
    puts "Can't divide by Zero"
  end until dividend == 0
  divisors
end

puts factors(0)

# Bonus 1
# to find factors

# Bonus 2
# to return the array of factors