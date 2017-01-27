# My solution
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select do |key, value|
  if value < 100
    value
  end
end

# LS solution
ages.keep_if{|_, age| age < 100}
