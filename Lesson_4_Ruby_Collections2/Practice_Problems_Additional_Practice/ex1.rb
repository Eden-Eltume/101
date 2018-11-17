flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

def create_flinstones_hash(flintstones)
  hsh = {}
  flintstones.each do |name|
    hsh[name] = flintstones.index(name)
  end
  hsh
end

p create_flinstones_hash(flintstones)

=begin
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
=end