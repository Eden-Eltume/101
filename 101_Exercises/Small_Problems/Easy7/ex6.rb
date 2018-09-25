LOWERCASE = 'a'.upto('z').to_a
UPPERCASE = 'A'.upto('Z').to_a
ALPHABET = LOWERCASE + UPPERCASE

def staggered_case(str)
  arr = str.chars
  index = 1
  counter = 0

  loop do
    break if counter == str.length
    current_letter = arr[counter]
    if ALPHABET.include?(current_letter) && index.odd?
      current_letter.upcase!
      counter += 1
      index += 1
    elsif ALPHABET.include?(current_letter) && index.even?
      current_letter.downcase!
      counter += 1
      index +=1
    else
      counter += 1
    end
  end
  arr.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
