flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney_array = []
flintstones.each do |key, value|
  if key == "Barney"
    barney_array.push(key)
    barney_array.push(value)
  else
    next
  end
end

puts barney_array.inspect
