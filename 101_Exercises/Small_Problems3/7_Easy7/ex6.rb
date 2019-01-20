def staggered_case(str)
  new_str = ''
  index = 0 
  str.each_char do |char|
    if ('a'..'z').include?(char) || ('A'..'Z').include?(char)
      index.even? ? new_str << char.upcase : new_str << char.downcase
      index += 1 
    else 
      new_str << char
    end 
  end 
  new_str
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'