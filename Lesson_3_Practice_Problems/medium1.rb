# Question 1
10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

# Question 2
# It will say no implicit conversion to integer into string
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Question 3
while dividend > 0 do
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end
# Bonus 1: To make sure that the remainder is equal to 0
# Bonus 2: It allows you to explicitly specify the return value

# Question 4
# Yes, there is a difference.

# Question 5
# The limit was outside its scope.
def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Question 6
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 7
34

# Question 8
# Yes, because in this case, the program does not reassign demo_hash -- it just uses it as-is.
# So the actual hash object that is being messed with inside of the method IS the munsters hash.

# Question 9
# The outermost call is evaluated by determining the result of rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock.
# In turn that means we need to evaluate the two separate results of rps("rock", "paper") and rps("rock", "scissors") and later combine them by calling rps on their individual results.
# Those innermost expressions will return "paper" and "rock", respectively. Calling rps on that input will return "paper". Which finally when evaluated against "rock" will return "paper".

# Question 10
# No, because by default it returns yes only one puts a param then it's no. 
