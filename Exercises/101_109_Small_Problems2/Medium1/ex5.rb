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
