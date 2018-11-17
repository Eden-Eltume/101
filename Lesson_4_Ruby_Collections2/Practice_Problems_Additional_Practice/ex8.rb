=begin
What happens when we modify an array while we are iterating over it? 
What would be output by this code?

In both cases we see that iterators DO NOT work on a copy of the original array or from stale meta-data (length) about the array. 
They operate on the original array in real time.
Like a destructive method.
=end