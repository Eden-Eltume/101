=begin 
P - convert integers to strings without the use of standard conversion methods
E - 4321 to '4321'
D - 1. take integer as argument
    2. have a string to integer hash
    3. return string
A - 1. create an array of integers using digits method
    2. Check to see if each element of digits array matches the in integer key in the digits hash
      a. create a string variable
      b. if it matches concat the value of the corresponding key
    3. return the string variable
C:
=end

DIGITS = {
            0 => '0',
            1 => '1',
            2 => '2',
            3 => '3',
            4 => '4',
            5 => '5',
            6 => '6',
            7 => '7',
            8 => '8',
            9 => '9'
}

def integer_to_string(int)
  digits_array = int.digits.reverse

  str = ''
  digits_array.each do |digit| 
    str += DIGITS[digit]
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'