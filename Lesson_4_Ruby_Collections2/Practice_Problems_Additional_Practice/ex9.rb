words = "the flintstones rock"

def titlelize(words)
  words_array = words.split

  returned_array = words_array.map do |word|
    word.capitalize
  end

  words_string = returned_array.join(" ")
  return words_string
end

p titlelize(words)