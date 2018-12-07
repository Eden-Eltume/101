=begin
Problem - Take a nested array and turn it into a hash where each key is the first item in each sub array and each value is the second item
Example - [[:a, 1], ['b', 'two']] -> a: 1, 'b' => 'two'
Data structure - 1. array argument
                2. hash where the key is the first item in each sub array and the value as the second item
Algo - 1. create an empty key-value pair
      2. add each first element of each sub array as the key and each second element of each sub array as the value
        a. iterate through the nested array
        b. add the element at the first index as the key
        c. add the element at the second index as the value 
      3. return the key-value pair
Code -
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

def nest_array_to_hash(arr)
  hsh = {}
  arr.each do |sub_arr|
    hsh[sub_arr.first] = sub_arr.last
  end
  hsh
end


def nest_to_hash(arr)
  arr.each_with_object({}){|sub_arr, hsh| hsh[sub_arr.first] = sub_arr.last}
end

p nest_array_to_hash(arr)
p nest_to_hash(arr)

