daylight = [true, false].sample

def time_of_day(bool)
  if bool
    puts "It's daytime!"
  else
    puts "It's night time!"
  end
end

time_of_day(daylight)
