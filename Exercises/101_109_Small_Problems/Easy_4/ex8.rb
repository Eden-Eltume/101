DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_signed_integer(string)
  value = 0

  if string.include?('-')
    string.delete!('-')
    digits = string.chars.map { |char| DIGITS[char] }
    digits.each { |digit| value = 10 * value - digit }
  elsif string.include?('+')
    string.delete!('+')
    digits = string.chars.map { |char| DIGITS[char] }
    digits.each { |digit| value = 10 * value + digit }
  else
    digits = string.chars.map { |char| DIGITS[char] }
    digits.each { |digit| value = 10 * value + digit }
  end
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
