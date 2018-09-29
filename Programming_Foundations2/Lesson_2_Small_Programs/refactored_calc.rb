def prompt(message)
  puts(">> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

puts "Welcome to my calculator! Enter your name: "

user_name = ''
loop do
  user_name = gets.chomp
  if user_name.empty?()
    puts "Please make sure to use a valid name."
  else
    break
  end
end

puts "Hi #{user_name}!"

loop do # Main loop
  first_number = '' # Initialized here to be able to use outside the loop
  loop do
    prompt("What's the first number?")
    first_number = gets.chomp.to_f

    if valid_number?(first_number)
      break
    else
      puts "Hmm... that doesn't look like a valid number."
    end
  end

  second_number = ''
  loop do
    prompt("What's the second number?")
    second_number = gets.chomp.to_f

    if valid_number?(second_number)
      break
    else
      puts "Hmm... that doesn't look like a valid number."
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform
    1) add
    2) subtract
    3) multiply
    4) divide

  MSG

  puts operation_prompt
  choice = ''

  loop do
    if %w(1 2 3 4).include?(choice)
      break
    else
      puts "You must choose 1, 2, 3 or 4!"
      choice = gets.chomp
    end
  end

  case choice
  when '1'
    puts "The result of adding them is #{first_number + second_number}."
  when '2'
    puts "The result of subtracting them is #{first_number - second_number}."
  when '3'
    puts "The result of multiplying them is #{first_number * second_number}."
  when '4'
    puts "The result of dividing them is #{first_number / second_number}."
  else
    puts "Invalid operation!"
  end

  puts "Do you want to perform another calculation? (Enter Y for yes)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thank you for using my calculator. Have a good day!"
