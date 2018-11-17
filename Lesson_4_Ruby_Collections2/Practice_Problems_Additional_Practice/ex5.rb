flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def find_a_flinstone(flintstones)
  flintstones.select do |name|
    name.include?("Be")
  end
end

found_name = find_a_flinstone(flintstones).join
p flintstones.index(found_name)

# flintstones.index { |name| name[0, 2] == "Be" }