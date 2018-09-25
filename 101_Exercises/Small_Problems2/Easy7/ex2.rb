def letter_case_count(str)
  lowercase_letters = 'abcdefghijklmnopqrstuvwxyz'
  uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

  hsh = {lowercase: 0, uppercase: 0, neither: 0}

  counter = 0
  loop do
    break if counter == str.length

    current_char = str[counter]

    if lowercase_letters.include?(current_char)
      hsh[:lowercase] += 1
    elsif uppercase_letters.include?(current_char)
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
