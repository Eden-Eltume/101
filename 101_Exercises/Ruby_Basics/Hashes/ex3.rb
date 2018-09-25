car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}
car_delete = car.delete_if do |key, value|
  key == :mileage
end

p car_delete
