def count_sentences
  text = File.read("Frankenstein.txt")
  word_count = []
  sent_arr = text.split(/[.!?]/)
  sent_arr.each do |sentence|
    sentence.tr!("\n", " ") # to replace newlines with spaces
    word_arr = sentence.split(" ")
    word_count << word_arr.length
  end
  word_count.sort!.last
end

p count_sentences
