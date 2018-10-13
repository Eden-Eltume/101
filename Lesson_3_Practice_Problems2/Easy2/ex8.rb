advice = "Few things in life are as important as house training your pet dinosaur."

sliced_portion = advice.slice!(0, 39) # advice.slice!(0, advice.index('house'))
p sliced_portion
p advice