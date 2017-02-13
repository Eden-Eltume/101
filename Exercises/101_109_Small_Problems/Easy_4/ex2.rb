def century(year)
  if year.round(-2) >= year
    century = year.round(-2) / 100
  else
    century = (year.round(-2) / 100) + 1
  end
  num_suffix(century)
end

def num_suffix (num)
  n = num.to_s
  if n.end_with?('1') && !n.end_with?('11')
    n << 'st'
  elsif n.end_with?('2') && !n.end_with?('12')
    n << 'nd'
  elsif n.end_with?('3') && !n.end_with?('13')
    n << 'rd'
  else
    n << 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
