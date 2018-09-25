vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  unique_vehicles = vehicles.uniq

  unique_vehicles.each do |vehicle|
    puts "#{vehicle} => #{vehicles.count(vehicle)}"
  end
end

count_occurrences(vehicles)
