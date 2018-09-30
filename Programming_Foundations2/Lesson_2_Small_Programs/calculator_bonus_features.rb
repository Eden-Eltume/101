require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts(">> #{message}")
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

puts(messages("welcome"))
puts(messages("welcome", "ht"))

user_name = ''
loop do
  user_name = gets.chomp.strip
  if user_name.match?(/[a-zA-Z]/)
    break
  else
    puts(messages("valid_name"))
    puts(messages("valid_name", "ht"))
  end
end

puts "Hi #{user_name}!"

loop do # Main loop
  first_number = '' # Initialized here to be able to use outside the loop
  loop do
    prompt(MESSAGES["first_number"])
    first_number = gets.chomp

    if valid_number?(first_number)
      break
    else
      puts MESSAGES["invalid_number"]
    end
  end

  second_number = ''
  loop do
    prompt(MESSAGES["second_number"])
    second_number = gets.chomp

    if valid_number?(second_number)
      break
    else
      puts MESSAGES["invalid_number"]
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform
    1) +
    2) -
    3) *
    4) /

  MSG

  puts operation_prompt
  choice = ''

  loop do
    if %w(1 2 3 4).include?(choice)
      break
    else
      puts MESSAGES["choose_one"]
      choice = gets.chomp
    end
  end

  case choice
  when '1'
    puts MESSAGES["adding"] + (first_number.to_f + second_number.to_f).round(2).to_s
  when '2'
    puts MESSAGES["subtracting"] + (first_number.to_f - second_number.to_f).round(2).to_s
  when '3'
    puts MESSAGES["multiplying"] + (first_number.to_f * second_number.to_f).round(2).to_s
  when '4'
    puts MESSAGES["dividing"] + (first_number.to_f / second_number.to_f).round(2).sto_s
  else
    puts MESSAGES["invalid_op"]
  end

  puts MESSAGES["again?"]
  answer = gets.chomp
  break unless answer.downcase == 'y' || answer.downcase == 'yes'
  system('clear') || system('cls')
end

puts MESSAGES["good_bye"]
