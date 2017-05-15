def rotate_rightmost_digits(digits, rightmost)
  reversed_arr = digits.to_s.split('').reverse
  num = rightmost - 1
  right_num = reversed_arr.delete_at(num)
  new_arr = reversed_arr.unshift(right_num.to_s)
  new_arr.reverse.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
