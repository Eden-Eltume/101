=begin
  

what is != and where should you use it?
# It's mean not equal to.

put ! before something, like !user_name
# It means not true

put ! after something, like words.uniq!
# It is typical indicates whether a function is destructive or not

put ? before something
# Gives syntax error

put ? after something
# Undefined method error

put !! before something, like !!user_name
returns true
  
=end

words = [1, 2, 2, 3]
puts !!words