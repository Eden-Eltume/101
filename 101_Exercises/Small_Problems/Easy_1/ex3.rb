def digit_list(int)
  array = []
  int.to_s.split("").each do |num|
    array << num.to_i
  end
  array
end
p digit_list(1234567)
