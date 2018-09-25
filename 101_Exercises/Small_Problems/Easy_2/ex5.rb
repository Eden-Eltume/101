puts "What is your name?"
word = gets.chomp

def name_screamer(word='Bob')
  if word.include?('!')
    name = word.delete('!')
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{word}."
  end
end

name_screamer(word)
