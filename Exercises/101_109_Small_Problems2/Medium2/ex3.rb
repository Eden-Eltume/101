LOWERCASE = 'a'.upto('z').to_a
UPPERCASE = 'A'.upto('Z').to_a

def letter_percentages(str)
  hsh = {lowercase: 0, uppercase: 0, neither: 0}
  arr = str.chars
  uniq_arr = arr.uniq

  for uniq_char in uniq_arr do
    ac = arr.count(uniq_char)
    if LOWERCASE.include?(uniq_char)
      hsh[:lowercase] += ac
    elsif UPPERCASE.include?(uniq_char)
      hsh[:uppercase] += ac
    else
      hsh[:neither] += ac
    end
  end
  total = 0
  hsh.values.map {|num| total += num}

  lower_percent = (hsh[:lowercase] / total.to_f) * 100
  upper_percent = (hsh[:uppercase] / total.to_f) * 100
  neither_percent = (hsh[:neither] / total.to_f) * 100


  new_hsh = {lowercase: lower_percent, uppercase: upper_percent, neither: neither_percent}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
