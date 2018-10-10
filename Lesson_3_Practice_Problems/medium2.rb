# Question 1
# I did

# Question 2
# The method gets the VALUES of the parameters we pass,
# but the parameter variables inside the method have no other relationship to those outside of the method.
# Our main method STILL has no access to variables that are defined inside of the method.

# Question 3
# It will look like this because the different parameters are treated the same but the results are different.
My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]

# Question 4
# It will look like this because array#= makes a new object while string#<< modifies the existing one.
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins"]

# Question 5
def color_valid(color)
  color == "blue" || color == "green"
end
