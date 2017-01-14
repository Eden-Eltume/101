VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_result(choice, computer_choice)
  if (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper')
      prompt("You won!")
  elsif (computer_choice == 'rock' && choice == 'scissors') ||
        (computer_choice == 'paper' && choice == 'rock') ||
        (computer_choice == 'scissors' && choice == 'paper')
        prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

# main logic
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}. Computer chose #{computer_choice}."
  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")

=begin
      Answers to things to consider
      1. It will not work.
      2. I get the undefined method_error for before but after it works.
      3. Don't really understand question.
      4. We could use a case-statement.
=end
