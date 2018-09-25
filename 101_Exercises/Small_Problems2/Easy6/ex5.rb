
def reverse(arr)
  new_arr = []
  until arr.empty?
    new_arr << arr.pop
  end
  new_arr
end

p reverse([1,2,3,4])
p [1,2,3,4].object_id != reverse([1,2,3,4]).object_id
