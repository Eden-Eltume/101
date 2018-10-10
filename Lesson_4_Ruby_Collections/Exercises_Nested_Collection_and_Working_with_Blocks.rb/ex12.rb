arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]
arr.each_with_object([]) do |element1, new_arr|
  if element1.size >= 5
    new_arr << element1
  else
    element1.each do |element2|
      if element2.size >= 5
        new_arr << element2
      else
        element2.each do |element3|
          new_arr << element3
        end
      end
    end
  end
end
