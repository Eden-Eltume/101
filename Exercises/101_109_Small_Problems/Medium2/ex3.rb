LOWERCASE = 'a'.upto('z').to_a
UPPERCASE = 'A'.upto('Z').to_a

def letter_case_count(str)
  hsh = {lowercase: 0, uppercase: 0, neither: 0}

  counter = 0
  loop do
    break if counter == str.length

    current_letter = str[counter]
    if LOWERCASE.include?(current_letter)
      hsh[:lowercase] += 1
    elsif UPPERCASE.include?(current_letter)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
    counter += 1
  end
  hsh
end

def letter_percentages(str)
  str_hsh = letter_case_count(str)
  total = 0
  hsh_values = str_hsh.values
  hsh_values.map {|value| total += value}
  percentage_hsh = {lowercase: 0, uppercase: 0, neither: 0}

  percentage_hsh[:lowercase] = hsh_values[0] / total.to_f * 100
  percentage_hsh[:uppercase] = hsh_values[1] / total.to_f * 100
  percentage_hsh[:neither] = hsh_values[-1] / total.to_f * 100

  percentage_hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
