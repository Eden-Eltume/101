# The block's return value is true.
# The return value of the block is determined by the return value of the last expression within the block. In this case the last statement evaluated is num.odd?, which returns a boolean. 
# Therefore the block's return value will be a boolean, since Fixnum#odd? can only return true or false.

# And the return value of any? is true.
# The reason is because any? returns true as long as one or more of the elements be evaluated by the block does not return nil or false.
# It outputs only 1. What is also interesting here is any? stops iterating after this point since there is no need to evaluate the remaining items in the array; 
# therefore, puts num is only ever invoked for the first item in the array: 1.