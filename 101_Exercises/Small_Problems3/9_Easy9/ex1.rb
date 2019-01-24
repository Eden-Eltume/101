=begin
P- given an array containing a person's full name and a hash with job title & occupataion, return these info in a sentence.
E- (['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
    => Hello, John Q Doe! Nice to have a Master Plumber around.
D- array and hash to a string
A- SET 2 string variables. One for full name and another for career
  -ITERATE through array
    -APPEND each element to the full name variable
  -ITERATE through hash
    -APPEND the values to the career variable
  -RETURN a string concatenation of filler words, full name and career. 
C
=end

def greetings(arr, hsh)
  full_name = ""
  career = ""

  arr.each{|name| full_name << " " + name}
  hsh.each{|_, value| career << " " + value}

  "Hello," + full_name + "!" + " Nice to have a" + career + " around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.