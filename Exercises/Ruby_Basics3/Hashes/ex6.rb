numbers = {
  high:   100,
  medium: 50,
  low:    10
}
half_numbers = numbers.map {|k,v| v / 2}
p half_numbers

# Second, you might expect Hash#map to return a Hash, but it actually returns an Array.
# This is because #map creates a new Array based on the return value of the block regardless
# of the data structure it is used on.
