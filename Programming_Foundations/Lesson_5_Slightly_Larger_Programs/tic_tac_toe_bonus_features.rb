WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = " ".freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(string)
  puts "=> #{string}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def clear_screen
  system("clear") || system("cls")
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def choose_first_turn(first_turn)
  loop do
    prompt "Who should go first? Type p for player or c for computer"
    first_turn = gets.chomp.downcase

    if first_turn == "p"
      return "player"
    elsif first_turn == "c"
      return "computer"
    else
      prompt "That's not a valid choice. Please type p or c"
    end
  end
end

def place_piece!(brd, current_player)
  player_places_piece!(brd) if current_player == "player"
  computer_places_piece!(brd) if current_player == "computer"
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_squares_at_risk(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
  end
end

def computer_strategy(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    square = computer_squares_at_risk(line, brd, marker)
    break if square
  end

  square
end

def center_square(brd)
  5 if brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  square = computer_strategy(brd, COMPUTER_MARKER)

  square = computer_strategy(brd, PLAYER_MARKER) unless square

  square = center_square(brd) unless square

  square = empty_squares(brd).sample unless square

  brd[square] = COMPUTER_MARKER
end

def change_player(current_player)
  if current_player == "player"
    "computer"
  elsif current_player == "computer"
    "player"
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

player_score = 0
computer_score = 0
first_turn = ""
current_player = ""
loop do
  prompt "Welcome to the Tic Tac Toe game!"

  loop do
    board = initialize_board
    first_turn = choose_first_turn(first_turn)
    prompt "The #{first_turn} has the first pick!"
    current_player = first_turn

    loop do
      clear_screen
      display_board(board)

      place_piece!(board, current_player)
      break if someone_won?(board) || board_full?(board)
      current_player = change_player(current_player)
    end

    clear_screen
    display_board(board)

    player_score += 1 if detect_winner(board) == "Player"
    computer_score += 1 if detect_winner(board) == "Computer"

    prompt "#{detect_winner(board)} won!" if someone_won?(board)
    if board_full?(board) && !someone_won?(board)
      prompt "It's a tie!"
      prompt "-----------"
    end
    prompt "First to 5 wins the game!"
    prompt "-------------------------"
    prompt "Current score: Player #{player_score}. Computer #{computer_score}."
    prompt "------------------------------------"

    next unless player_score == 5 || computer_score == 5
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break if answer.downcase == "y"
    prompt "Sorry must enter a y or n."
  end
  break
end

prompt "Thanks for playing. Goodbye!"
