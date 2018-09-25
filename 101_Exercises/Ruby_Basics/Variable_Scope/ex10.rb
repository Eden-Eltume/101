# undefined method `+' for nil:NilClass (NoMethodError)
=begin
a at the top level is not visible inside the block because the block is inside my_value,
and methods are self-contained with respect to local variables. 
Since the outer a is not visible inside my_value, it isn't visible inside the block.
=end
