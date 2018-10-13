def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# To avoid ambiguity, the trickey_method can be refactored
# line 3 can be refactored to an_array_param += ["rutabaga"] to show it does not mutate the caller. 
