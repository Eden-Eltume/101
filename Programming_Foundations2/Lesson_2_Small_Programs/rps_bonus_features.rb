VALID_CHOICES = {
  "rock": 'r',
  "paper": 'p',
  "scissors": 's',
  "lizard": 'l',
  "spock": 'k'
}

WINNING_SCENARIOS = {
  "rock": ['scissors', 'lizard'],
  "paper": ['rock', 'spock'],
  "scissors": ['paper', 'lizard'],
  "lizard": ['spock', 'paper'],
  "spock": ['scissors', 'rock']
}

NUMBER_OF_WINS = 5

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_SCENARIOS.values_at(first).flatten!.include?(second.to_s)
end

def tell_who_won(player, computer)
  if win?(player, computer)
    "player"
  elsif win?(computer, player)
    "computer"
  else
    "tie"
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  system('clear' || 'clr')
  players_score = 0
  computers_score = 0
  ties = 0
  loop do
    choice = ''
    loop do
      puts ''
      prompt("Welcome! Choose:")
      VALID_CHOICES.each do |valid_choice, letter|
        prompt("#{letter} for #{valid_choice}")
      end
      choice = gets.chomp.downcase

      if VALID_CHOICES.value?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.keys.sample
    player_choice = VALID_CHOICES.key(choice)

    prompt("You chose: #{player_choice} and computer chose #{computer_choice}")

    display_results(player_choice, computer_choice)
    result = tell_who_won(player_choice, computer_choice)

    if result == "player"
      players_score += 1
    elsif result == "computer"
      computers_score += 1
    else
      ties += 1
    end

    system('clear' || 'clr')

    puts "Player: #{players_score}"
    puts "Computer: #{computers_score}"
    puts "Ties: #{ties}"

    if players_score >= NUMBER_OF_WINS
      puts "You won #{NUMBER_OF_WINS} times with only #{ties} tie(s)!"
      break
    elsif computers_score >= NUMBER_OF_WINS
      puts "The computer won #{NUMBER_OF_WINS} times with only #{ties} tie(s)!"
      break
    end
  end

  puts "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase == 'y' || answer.downcase == 'yes'
end

prompt("Thank you for playing. Goodbye!")
