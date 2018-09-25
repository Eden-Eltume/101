numbers = {
  high:   100,
  medium: 50,
  low:    10
}
low_numbers = numbers.select {|k, v| v < 25}
p low_numbers

# Unlike Hash#map, Hash#select returns a hash instead of an array.
# Specifically, #select returns a new hash consisting of entries for which the block returns true.
