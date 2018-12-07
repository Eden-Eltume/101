=begin 
P - take time of day in 24 hour format and returns the numbers of minutes before and after midnight, respectively
E - 12:34 after midnight gives you 754 and before_midnight, 686
D - 1. Take string as argument
    2. convert from string to integer
    3. return integer value
A-  1. create two methods
      a. one after midnight method and another before_midnight
    2. Create a main method 
      a. should have a conversion variable of minutes in an hour
      b. save the hour and minutes hands to variables
      c. convert them to integers
      d. sum the integers
    3. before_midnight function returns integers between 0 and (1440/2)
    4. after_midnight function returns integers between (1440/2) and 1440
    5. Use a conditional in the main method that calls each respective function based on the integer value
    6. return integer value in each respective method
C -
=end
MINUTES_IN_HOUR = 60
MAX_MINS = 1439
HALF_DAY_IN_MINS = MAX_MINS/ 2 

def calc_time(time_string)
  hour_hand = time_string[0..1].to_i
  minute_hand = time_string[3..4].to_i

  time_in_mins = (hour_hand * MINUTES_IN_HOUR) + minute_hand
end

def before_midnight(time_string)
  result = calc_time(time_string)
  time = (MAX_MINS + 1) - result
   if time.between?(0, HALF_DAY_IN_MINS)
    time
  else
    0
  end
end

def after_midnight(time_string)
  result = calc_time(time_string)
  if result.between?(HALF_DAY_IN_MINS, MAX_MINS)
    result
  else
    0
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0