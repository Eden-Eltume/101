def staggered_case(str)
  result = ''

  counter = 0
  loop do
    break if counter == str.size

    if counter.even?
      result << str[counter].upcase
    else
      result << str[counter].downcase
    end
    counter += 1
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
