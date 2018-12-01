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
  
  counter = 1
  loop do
    break if counter >= string.length
    current_char = string[counter]
    if DIGITS.keys.include?(current_char)
      integer_array << DIGITS[current_char]
    end
    counter += 1
  end

  sign = string[0]
  if sign != '-' && sign != '+'
    integer_array.unshift(DIGITS[sign[0]])
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


def string_to_signed_integer(string)
  sign = string[0]
  sum = string_to_integer(string)
  if sign == '-'
    -sum
  else
    sum
  end
end
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100