def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |el1|
    arr2.each do |el2|
      products << el1 * el2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
