=begin
def buy_fruit(multi_array)
  new_arr = []

  multi_array.each do |sub_arr|

    first_el = sub_arr[0]
    num_times = sub_arr[-1]

    num_times.times do 
      new_arr << first_el
    end
  end

  new_arr
end
=end

# The better solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
