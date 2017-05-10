def diamond(num)
  if num.odd?
    1.upto(num) do |n|
      if n.odd?
        puts ("*" * n).center(num)
      end
    end

    one_less = num - 1

    one_less.downto(1) do |number|
      if number.odd?
        puts ("*" * number).center(num)
      end
    end
  end
end

diamond(9)

# My other solution
=begin
def diamond(n)
  (n + 1).times do |i|
    str = ("*" * i).to_s
    puts str.center(n) unless i.even?
  end

  (n-1).downto(1) do |i|
    str2 = ("*" * i).to_s
    puts str2.center(n) unless i.even?
  end
end
=end
