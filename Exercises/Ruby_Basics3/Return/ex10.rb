1
# Because when conditional is evaluated it will always be true.
# And 1 is the last line in this case.

=begin
However, variable assignment still returns the value it was assigned to.
It works the same as if the assignment wasn't even there
Since we know that the else clause was ignored, we can safely determine that
the return value will be 1 because it's the only evaluated value in the if clause.
=end
