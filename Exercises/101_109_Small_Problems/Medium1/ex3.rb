def rotate_rightmost_digits(digits, rightmost)
  reversed_arr = digits.to_s.split('').reverse
  num = rightmost - 1
  right_num = reversed_arr.delete_at(num)
  new_arr = reversed_arr.unshift(right_num.to_s)
  new_arr.reverse.join('').to_i
end

def max_rotation(number_to_rotate)
  rotation_counter = number_to_rotate.to_s.length

  loop do
    number_to_rotate = rotate_rightmost_digits(number_to_rotate, rotation_counter)
    return number_to_rotate if rotation_counter <= 2
    rotation_counter -= 1
  end
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
