=begin 
Problem - given nested array return an array with only the hashes where all integers are even
Example - arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}] to
          # => [{:e=>[8], :f=>[6, 10]}]
Data structure - 1. array nested with hashes as argument
                 2. multi-dimensional array
Algo -    1. iterate over the array
          2. find the values of each hash
            a. add the the key to a new hash
            b. add the values too
          3. return only key-value pair where all the values are even
Code  
=end
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# given solution
def hash_to_array(arr)
  arr.select do |hsh|
    hsh.all? do |_, value|
      value.all? do |num|
        num.even?
      end
    end
  end
end

p hash_to_array(arr)