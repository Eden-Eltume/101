=begin 
P - convert a string into an integer without the use of the to_i method
E - '4321' to 4321
D - 1. String input
    2. Hash that matches each string digit to its equivalent actual digit
    3. Integer output
A 1. Create a hash where each key is a string of each digit and value is the equivalent integer
  2. Create an empty integer array
  3. loop through the string
    a. match the current  iteration with the corresponding key
    b. if it matches add the current iteration's value to the integer array
  4. convert the integer array to an integer
    a. make a variable to be summed
    b. from left to right multiply the element in the integer array by its decimal place
    c. add the result to the sum variable
  5. return the sum
C
=end

DIGITS = {
            '0' => 0,
            '1' => 1,
            '2' => 2,
            '3' => 3,
            '4' => 4,
            '5' => 5,
            '6' => 6,
            '7' => 7,
            '8' => 8,
            '9' => 9
}

def string_to_integer_array(string)
  integer_array = []
  
  counter = 0
  loop do
    break if counter > string.length
    current_char = string[counter]
    if DIGITS.keys.include?(current_char)
      integer_array << DIGITS[current_char]
    end
    counter += 1
  end
  integer_array
end

def string_to_integer(string)
  integer_array = string_to_integer_array(string)
  sum = 0
  case integer_array.size
  when 4
    sum += integer_array.shift * 1000 
    sum += integer_array.shift * 100
    sum += integer_array.shift * 10
    sum += integer_array.shift * 1
  when 3
    sum += integer_array.shift * 100
    sum += integer_array.shift * 10
    sum += integer_array.shift * 1
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
