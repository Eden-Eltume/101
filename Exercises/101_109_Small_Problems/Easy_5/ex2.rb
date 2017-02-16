HOUR = 60
DAY = 24

def time_of_day(minutes)
  hour = (minutes / HOUR) % DAY
  minute = minutes % HOUR
  "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# https://ruby-doc.org/core-2.2.3/String.html#method-i-rjust
