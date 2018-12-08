=begin
Problem - given an array of integers between 0 and 19 return an array of thoses integers sorted bsed on the English words for each number
Example - alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
Data structure - integer argument
               - array of names for numbers + suffixes
               - array return value
Algo -  Create a hash with the integers as values and corresponding names as keys
     -  Sort the hash by keys but return the values where it mataches the integers of the array argument
Code
=end
ALPHABETIC_NUMBER = {
                         "zero" => 0,
                         "one" => 1, 
                         "two" => 2,
                         "three" => 3,
                         "four" => 4,
                         "five" => 5,
                         "six" => 6,
                         "seven" => 7,
                         "eight" => 8,
                         "nine" => 9,
                         "ten" => 10,
                         "eleven" => 11,
                         "twelve" => 12,
                         "thirteen" => 13,
                         "fourteen" => 14,
                         "fifteen" => 15,
                         "sixteen" => 16,
                         "seventeen" => 17,
                         "eighteen" => 18,
                         "nineteen" => 19   
}

def alphabetic_number_sort(arr)
  nested_array = ALPHABETIC_NUMBER.sort{|first_num, second_num| first_num <=> second_num}
  result = nested_array.map do |name, number|
    arr.select{|num| number == num}
  end
  result.flatten
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
