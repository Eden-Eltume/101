flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

result = flintstones.select{|key, value| key == "Barney"}
p result.to_a.flatten!