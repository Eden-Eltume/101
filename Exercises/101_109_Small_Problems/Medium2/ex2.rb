BLOCKS = %w[BO XK DQ CP NA GT RE FS JW HU VI LY ZM]

def block_word?(word)
  up_word = word.upcase
  BLOCKS.none? { |block| up_word.count(block) > 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-none-3F
# none? is the opposite of any?
