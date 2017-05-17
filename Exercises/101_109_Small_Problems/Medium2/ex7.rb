require 'date'

def friday_13th(year)
  start = Date.new(year)
  last = Date.new(year, 12, 31)
  the13th = 0

  start.upto(last) do |day|
    if day.mday == 13 && day.friday?
      the13th += 1
    end
  end
  the13th
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
