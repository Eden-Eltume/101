def alphabetic_number_sort(range_arr)
  num_words = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
    11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

  num_words_arr = []
  sorted_num_arr = []
  range_arr.each do |element|
    if num_words.has_key?(element)
      num_words_arr << num_words[element]
    end
  end

  num_words_arr.sort.each do |element|
    num_words.each do |key, value|
      if element == value
        sorted_num_arr << key
      end
    end
  end
  sorted_num_arr
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
