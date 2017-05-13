require 'date'

def friday_13th(year)
  start = Date.new(year)
  last = Date.new(year, 12, 31)
  fridays = 0

  (start..last).each do |d|
    if d.day == 13 && d.friday?
      fridays += 1
    end
  end
  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
