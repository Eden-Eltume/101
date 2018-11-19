vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def convert_hash(hsh)
  hsh.each{|key, value| puts "#{key} => #{value}"}
end

def count_occurrences(vehicles)
  returned_value = vehicles.each_with_object({}) {|el, hsh| hsh[el] = vehicles.count(el) }
  convert_hash(returned_value)
end



count_occurrences(vehicles)