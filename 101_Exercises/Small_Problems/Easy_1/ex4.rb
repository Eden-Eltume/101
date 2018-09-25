vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  vehicles_hash = {}

  car_occurences = 0
  truck_occurences = 0
  suv_occurences = 0
  motorcycle_occurences = 0

  vehicles.each do |element|
    case element
    when 'car'
      car_occurences += 1
      vehicles_hash[element] = car_occurences
    when 'truck'
      truck_occurences += 1
      vehicles_hash[element] = truck_occurences
    when 'SUV'
      suv_occurences += 1
      vehicles_hash[element] = suv_occurences
    when 'motorcycle'
      motorcycle_occurences += 1
      vehicles_hash[element] = motorcycle_occurences
    end
  end
  vehicles_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)
