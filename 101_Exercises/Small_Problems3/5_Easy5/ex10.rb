def print_in_box(text)
  len = text.length
  puts "+-#{"-"*len}-+"
  puts "| #{" "*len} |"
  puts "| #{text} |"
  puts "| #{" "*len} |"
  puts "+-#{"-"*len}-+"
end 

print_in_box('To boldly go where no one has gone before.')
print_in_box('')