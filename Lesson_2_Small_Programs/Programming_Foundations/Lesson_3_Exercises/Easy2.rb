# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")

# Question 2
puts munsters_description.capitalize!
puts munsters_description.upcase!.gsub('THE', 'tHE').gsub('MUNSTERS', 'mUNSTERS')
puts munsters_description.downcase!
puts munsters_description.upcase!

# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
puts ages.merge!(additional_ages)

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match('Dino')

# Question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6
flintstones << "Dino"

# Question 7
flintstones.push("Dino", "Hoppy")

# Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!(0, advice.index('house'))
puts advice

# Question 9
statement = "The Flintstones Rock!"
puts statement.scan('t').count

# Question 10
title = "Flintstone Family Members"
puts title.center(40)
