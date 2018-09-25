def diamond(num)
  if num.odd?
    1.upto(num) do |t|
      if t.odd?
        puts ("*" * t).center(num)
      end
    end

    one_less = num - 1
    one_less.downto(1) do |n|
      if n.odd?
        puts ("*" * n).center(num)
      end
    end
  end
end

p diamond(3)
p diamond(9)
