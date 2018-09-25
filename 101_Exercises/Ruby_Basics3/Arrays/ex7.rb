numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select do |el|
                        el % 3 == 0
                     end
p divisible_by_three

=begin
#map returns a new array with each element transformed based on the block's return value.
#select returns a new array containing elements selected only if the block's return value is true.
=end
