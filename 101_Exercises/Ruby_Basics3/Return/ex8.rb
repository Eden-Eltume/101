0
1
2
3
4
#=> 10

# Because 10 it outisde the times block. So it is becomes the implied return value.
=begin
Integer#times is no longer the last line in count_sheep.
#times still returns the initial integer, but this time nothing is done with the return value. 
Instead, 10 is the implicit return value of count_sheep because it's the last line evaluated.
=end
