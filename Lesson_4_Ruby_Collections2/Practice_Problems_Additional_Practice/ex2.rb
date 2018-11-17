ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_numbers = ages.values
p age_numbers.sum

# ages.values.inject(:+) # => 6174