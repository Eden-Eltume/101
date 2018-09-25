def staggered_case(str)
  new_str = ''

  counter = 0
  loop do
    break if counter == str.length
    current_char = str[counter]
    if counter.even?
      new_str << current_char.upcase
    else
      new_str << current_char.downcase
    end
    counter += 1
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
