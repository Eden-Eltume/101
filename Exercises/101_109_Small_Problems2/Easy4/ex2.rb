def cent_calc(year)
  cent_remainder = year % 100
  cent = (year / 100).floor
  if cent_remainder != 0
    "#{cent + 1}"
  else
    "#{cent}"
  end
end

def century(year)
  if cent_calc(year).end_with?('0') || cent_calc(year).end_with?('11')
    "#{cent_calc(year)}th"
  elsif cent_calc(year).end_with?('1')
    "#{cent_calc(year)}st"
  elsif cent_calc(year).end_with?('2') && !cent_calc(year).end_with?('12')
    "#{cent_calc(year)}nd"
  elsif cent_calc(year).end_with?('3') && !cent_calc(year).end_with?('13')
    "#{cent_calc(year)}rd"
  else
    "#{cent_calc(year)}th"
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
