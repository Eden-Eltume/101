arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
arr.map do |sub_hash|
  incremented_hash = {}
  sub_hash.map do |key, value|
     incremented_hash[key] = value + 1
  end
  incremented_hash
end
