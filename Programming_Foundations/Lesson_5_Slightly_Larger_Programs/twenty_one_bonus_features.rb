SUITS = ['H', 'D', 'S', 'C'].freeze
VALS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze
WINNING_SCORE = 21
MAX_DEALER_HIT = 17
ROUNDS = 2
GAME_NAME = 'Twenty-One'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALS).shuffle
end

def clear_screen
  system('clear') || system('cls')
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == VALS.last
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WINNING_SCORE
  end
  sum
end

def busted?(cards)
  total(cards) > WINNING_SCORE
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > WINNING_SCORE
    :player_busted
  elsif dealer_total > WINNING_SCORE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

score = { 'player' => 0, 'dealer' => 0 }
def scoreboard(dealer_cards, player_cards, score)
  result = detect_result(dealer_cards, player_cards)
  
  case result
  when :player
    score['player'] += 1
  when :dealer_busted
    score['player'] += 1
  when :dealer
    score['dealer'] += 1
  when :player_busted
    score['dealer'] += 1
  else
    puts "Neither player won this round."
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

prompt "Welcome to #{GAME_NAME}! Best 2 out of 3!"
loop do
  prompt "Welcome again to #{GAME_NAME}!"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]},
          for a total of #{total(player_cards)}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    scoreboard(dealer_cards, player_cards, score)
    break if score['player'] == ROUNDS || score['dealer'] == ROUNDS
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= MAX_DEALER_HIT

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    scoreboard(dealer_cards, player_cards, score)
    break if score['player'] == ROUNDS || score['dealer'] == ROUNDS
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  # both player and dealer stays - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=============="

  clear_screen
  display_result(dealer_cards, player_cards)
  scoreboard(dealer_cards, player_cards, score)

  break if score['player'] == ROUNDS || score['dealer'] == ROUNDS
end

prompt "Thank you for playing Twenty-One! Good bye!"
