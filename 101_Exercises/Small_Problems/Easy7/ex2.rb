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

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
