def greetings(arr, hsh)
  name = arr.join(' ')
  "Hello, #{name}! Nice to havea #{hsh[:title]} #{hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
