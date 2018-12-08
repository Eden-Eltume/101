=begin 
As soon as we have converted string into an array by calling split method on it, it is no longer possible for us to get back original object again.
Even just doing str.split.join(" ") returns a different object since you are splitting the string into an array and then joining that array back into a new string, with the same sequence of characters but still, a different object.
=end