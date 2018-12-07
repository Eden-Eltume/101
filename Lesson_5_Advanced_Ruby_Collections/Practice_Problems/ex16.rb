=begin
A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be created by the same system. That is, without any form of synchronization, two or more separate computer systems can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.
=end

=begin
Problem - create a uuid
Example - "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
Data structure - 1. array with possibile values
                 2. an array for number of chars per section
Algo -  2. divide the string that will be returned into sections
          a. for each section put a random value times the number of chars needed in a section
       2. return the string
Code
=end

def create_uuid
  hex = ("a".."f").to_a
  (0..9).each{|num| hex << num.to_s}
  
  uuid = ""
  uuid_format = [8,4,4,4,12]
  uuid_format.each do |num|
    num.times{ uuid += hex.sample}
    uuid += "-" if uuid.length < 36
  end
  uuid
end

p create_uuid