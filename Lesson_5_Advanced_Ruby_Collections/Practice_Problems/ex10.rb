arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

result = arr.map do |hsh|
  incremented_hash = {} 
  hsh.each{|key, value| incremented_hash[key] = value += 1}
  incremented_hash
end

p result