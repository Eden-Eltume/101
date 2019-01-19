=begin
Problem - write a method that takes a floating point number that represents an angle between 0 and 360
and return string that represents that angle in degrees, minutes and seconds.
Examples - dms(76.73) == %(76°43'48")
           dms(254.6) == %(254°36'00")
           dms(93.034773) == %(93°02'05")
           Formula ->  Decimal degrees = degrees 
Approach - 1. The integer degrees (d) are equal to the integer part of the decimal degrees (dd)
           2. The minutes (m) are equal to the dd minus d times 60
           3. The seconds are equal to dd minus d minus m divided by 60 times 3600 (PEMDAS)
Pseudo code - DEFINE the function
                DEFINE the formulas
                SET variables
                PLUG-IN variables into the formulas
                FORMAT the results
                  Degree DEGREE + "Minutes" + "seconds"
              END
Code -
Refactor -
=end

DEGREE = "\xC2\xB0"

def dms(decimal_degrees)
  degrees = Integer(decimal_degrees)
  minutes = Integer((decimal_degrees - degrees) * 60)
  seconds = Integer((decimal_degrees - degrees - (minutes.to_f / 60)) * 3600 )
  "#{degrees}" + DEGREE + "#{"%02i" % minutes}'" + "#{"%02i" % seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) #== %(254°36'00") Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")