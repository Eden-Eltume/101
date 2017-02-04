car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

car.select do |key, value|
  if value == 'blue'
    puts value
  end
end
