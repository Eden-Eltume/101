VALID_CHOICES = %w(Rock Paper Scissors Lizard Spock r p s l sp)
DISPLAY_CHOICES = %w(Rock Paper Scissors Lizard SPock)

def prompt(message)
  puts "=> #{message}"
end

# Put f instead of first to satisfy Rubocop too many lines cop
def win?(f, second)
  (f == 'paper' || f == 'p' && second == 'rock' || second == 'r') ||
    (f == 'rock' || f == 'r' && second == 'lizard' || second == 'l') ||
    (f == 'lizard' || f == 'l' && second == 'spock' || second == 'sp') ||
    (f == 'spock' || f == 'sp' && second == 'scissors' || second == 's') ||
    (f == 'lizard' || f == 'l' && second == 'paper' || second == 'p') ||
    (f == 'paper' || f == 'p' && second == 'spock' || second == 'sp') ||
    (f == 'spock' || f == 's' && second == 'rock' || second == 'r') ||
    (f == 'rock' || f == 'r' && second == 'scissors' || second == 's')
end
#    Paper covers rock
#    Rock crushes lizard
#    Lizard poisons Spock
#    Spock smashes scissors
#    Scissors decapitates lizard
#    lizard eats paper
#    Paper disproves Spock
#    Spock vaporizes rock
#    Rock crushes scissors

# Takes abbreviated inputs and convert them to their corresponding strings.
# It implicitly returns the corresponding string
def convert_abbreviation(abbr)
  case abbr
  when 'p'
    "Paper"
  when 'r'
    "Rock"
  when 's'
    "Scissors"
  when 'l'
    "Lizard"
  when 'sp'
    "Spock"
  else
    abbr
  end
end

# It implicitly returns
def display_result(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "You lost!"
  else
    "It's a tie!"
  end
end

# main logic
times_counter = 0
user_wins = 0
computer_wins = 0

# Determines if you won or lost
def won?(x, y)
  if x > y
    "you won"
  elsif y > x
    "computer won"
  else
    "you guys tied."
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{DISPLAY_CHOICES.join(', ')}")
    choice = gets.chomp.strip.downcase
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  convert_comp_choice = convert_abbreviation(computer_choice)
  convert_choice = convert_abbreviation(choice)

  puts "You chose: #{convert_choice}. Computer chose #{convert_comp_choice}."
  dr = display_result(choice, computer_choice)

  puts dr
  times_counter += 1
  if dr == "You won!"
    user_wins += 1
  elsif dr == "You lost!"
    computer_wins += 1
  end

  # Runs this code before asking to play again. So it makes sense.
  break if user_wins >= 5 || computer_wins >= 5
  prompt("Do you want to play again?")
  answer = gets.chomp.strip.downcase
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!\nYou played #{times_counter} games.\n
And #{won?(user_wins, computer_wins)} 5 times.")

#      Answers to things to consider
#      1. It will not work.
#      2. I get the undefined method_error for before but after it works.
#      3. Don't really understand question.
#      4. We could use a case-statement.
