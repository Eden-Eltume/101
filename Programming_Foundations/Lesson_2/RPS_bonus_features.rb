VALID_CHOICES = %w(rock paper scissors lizard spock r p s l sp)
DISPLAY_CHOICES = %w([R]ock [P]aper [S]cissors [L]izard [SP]ock)
WINNING_COMBOS = {
  'rock' => %w(scissors lizard s l),
  'paper' => %w(rock spock r sp),
  'scissors' => %w(paper lizard p l),
  'lizard' => %w(spock paper sp p),
  'spock' => %w(rock scissors r s),
  'r' => %w(s l scissors lizard),
  'p' => %w(r sp rock spock),
  's' => %w(p l paper lizard),
  'l' => %w(sp p spock paper),
  'sp' => %w(r s rock scissors)
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
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
  when 'p'  then "Paper"
  when 'r'  then "Rock"
  when 's'  then "Scissors"
  when 'l'  then "Lizard"
  when 'sp' then "Spock"
  else           abbr
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
def display_winner(user_wins, computer_wins)
  if user_wins > computer_wins
    "you won #{user_wins} times!"
  elsif computer_wins > user_wins
    "computer won #{computer_wins} times!"
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
  result = display_result(choice, computer_choice)

  puts result
  times_counter += 1
  if result == "You won!"
    user_wins += 1
  elsif result == "You lost!"
    computer_wins += 1
  end

  # Runs this code before asking to play again. So it makes sense.
  break if user_wins >= 5 || computer_wins >= 5
  prompt("Do you want to play again?")
  answer = gets.chomp.strip.downcase
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!\nYou played #{times_counter} games.\n
And #{display_winner(user_wins, computer_wins)}.")
