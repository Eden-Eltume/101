flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
def shorten_name(flintstones)
  flintstones.map do |name|
    name.slice(0..2)
  end
end

p shorten_name(flintstones)

# flintstones.map! { |name| name[0,3] }