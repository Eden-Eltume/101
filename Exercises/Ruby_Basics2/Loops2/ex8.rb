number = 0

until number == 10
  number += 1
  if number.odd?
    next
  else
    puts number
  end
end

# Further ex: because it would print the number before seeing if it's even or odd.
