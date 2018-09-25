def after_midnight(string)
  h = string[0..1].to_i
  m = string[3..4].to_i
  total_mins = ( h * 60 + m )
  return 0 if total_mins == 1440
  total_mins
end

def before_midnight(string)
  return 0 if after_midnight(string) == 0
  1440 - after_midnight(string)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
