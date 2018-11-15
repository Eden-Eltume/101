# It returns [1, 2, 3]
=begin
Since puts always returns nil, you might think that no values would be selected and an empty array would be returned. 
The important thing to be aware of here is how reject treats the return value of the block. reject returns a new array containing items where the block's return value is "falsey". In other words, if the return value was false or nil the element would be selected.
=end