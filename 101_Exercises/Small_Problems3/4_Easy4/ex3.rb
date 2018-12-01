=begin
P - Tell whether a given year is a leap year or not
  1. A leep year occurs every year that is evenly divisible by 4, unless the year is also divisible by 100
  2. If it's divisible by 100 then it's not leap year unless it's also divisble by 400
E - 2016 == true but 2100 is false
D - take integer input and return a boolean value
A:
  1. Use conditional statement to see if given year is divisble 4 and also not divisible by 100
  2. Return true or false based on the condition
C:
=end

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 400 == 0 
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true