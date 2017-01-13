# Need to require YAML & have config YAML file in same folder
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  x = "We could put code here then call case-statement after it again"
  word
end

prompt(messages('welcome', 'es'))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_num'))
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid_num'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_num'))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_num'))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(messages('perform_calc_again'))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('good_bye'))
