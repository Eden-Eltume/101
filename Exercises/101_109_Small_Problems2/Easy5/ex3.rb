def before_midnight(time)
  hours_minutes = time.split(':')
  -(hours_minutes[0].to_i % -24 * 60 + hours_minutes[1].to_i)
end

def after_midnight(time)
  hours_minutes = time.split(':')
  hours_minutes[0].to_i % 24 * 60 + hours_minutes[1].to_i
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
