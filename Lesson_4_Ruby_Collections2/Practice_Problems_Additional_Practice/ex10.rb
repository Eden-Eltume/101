munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def add_age_group(munsters)
  munsters.each do |name, hsh|
    case hsh["age"]
    when 0..17
      hsh["age_group"] = "kid"
    when 18..64
      hsh["age_group"] = "adult"
    else
      hsh["age_group"] = "senior"
    end
  end
  munsters
end

p add_age_group(munsters)