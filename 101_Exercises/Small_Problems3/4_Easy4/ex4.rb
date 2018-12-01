=begin 
P - Output leap year before and after 1752
  1. Before 1752: it occured any year divisible by 4
  2. After 1752: it occured it occurred any year divisble by 4 that's not also divisble by 100 unless it's 400
E - Year 100 is true, 1752 is true and 20000 is true
D - Take integer as input and return a boolean value
A:
  1. Add a condition to test in the last leap_year? method to see if the year is before or after 1752
    a. if it's on or before 1752 divide by 100 and return true or false
    b. if it's after 1752 use the prior code
C:
=end

def leap_year?(year)
  if year > 1752
    if year % 4 == 0 && year % 100 != 0
      true
    elsif year % 400 == 0 
      true
    else
      false
    end
  else
    year % 4 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true