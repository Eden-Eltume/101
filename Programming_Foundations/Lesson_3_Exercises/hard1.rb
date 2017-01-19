# Question 1
# Nothing, nil.

# Question 2
{:a=>"hi there"}

# Question 3
# part a
"One"
"Two"
"Three"
# part b
"One"
"Two"
"Three"
# part c
"Two"
"Three"
"One"

# Question 4
def dot_separated_ip_address?(input_string)
  return false unless input_string.is_a? String
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
  end
  true
end

puts dot_separated_ip_address?("192.168.1.1")
puts dot_separated_ip_address?("Not.valid.ip")
puts dot_separated_ip_address?("")
puts dot_separated_ip_address?(12345)
