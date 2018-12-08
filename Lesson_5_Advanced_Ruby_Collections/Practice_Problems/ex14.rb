=begin 
Problem - return an array with the colors of the fruits and sizes of the vegetables
          sizes should be uppecase and colors should be capitalized
Example - [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
Data structure - 1. nested hash as argument
                 2. return nested array
Algorithm - 1. iterate through the hash
            2.find whether each item is a fruit or vegetable
              a. if it's a fruit
                1. return the colors capitalized
              b. if it's a vegetable
                1. return the size uppercased
            3. create an array to save the results to
            4. return that array 
Code
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The given solution
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]