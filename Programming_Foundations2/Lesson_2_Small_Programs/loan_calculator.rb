=begin
Problem
  Given the loan amount, annual percentage rate and loan duration,
  calculate the monthly interest for a mortage/car loan over a certain duration.
Examples
  User inputs  20_000 as the loan amount,
  3 as the annual percentage
  and 5 years as the loan duration
  Program outputs 360
Data structures
Algorithm
START
SET loan_amount variable
SET annual_percentage_rate variable
SET loan_duration_in_years

LOOP asking user for the above info

VALIDATE that inputs are integers

CONVERT valid inputs to respective number type

CONVERT annual_percentage_rate to decimal then to monthly rate by dividing by 12
SET it to monthly_interest_rate variable

CONVERT loan_duration_in_years to months by dividing by 12
SET it to loan_duration_in_months variable

SET monthly_payment variable = to formula
OUTPUT monthly_payment variable rounded to 2 decimal points
END
Code
=end

def prompt(message)
  puts(">> #{message}")
end

def valid_integer?(input)
  input.to_i.to_s == input
end

prompt("Welcome to my mortgage/loan calculator!")

user_name = ''
loop do
  prompt("What is your name?")
  user_name = gets.chomp.strip
  if user_name.match?(/[a-zA-Z]/)
    break
  else
    prompt("Please enter a valid name!")
  end
end

prompt("Welcome #{user_name}!")

loop do
  loan_amount = nil
  loop do
    prompt("What is the car or mortgage loan amount?")
    loan_amount = gets.chomp

    if valid_integer?(loan_amount)
      break
    else
      prompt("Invalid loan amount!")
    end
  end

  annual_percentage_rate = nil
  loop do
    prompt("What is the annual percentage rate?")
    annual_percentage_rate = gets.chomp

    if valid_integer?(annual_percentage_rate)
      break
    else
      prompt("Invalid annual annual percentage rate!")
    end
  end

  loan_duration_in_years = nil
  loop do
    prompt("What is the loan durating in years?")
    loan_duration_in_years = gets.chomp

    if valid_integer?(loan_duration_in_years)
      break
    else
      prompt("Invalid loan duration!")
    end
  end

  monthly_interest = (annual_percentage_rate.to_f / 100) / 12
  months = loan_duration_in_years.to_i * 12

  monthly_payment = loan_amount.to_i
  monthly_payment *= monthly_interest / (1 - (1 + monthly_interest)**-months)

  puts "The monthly payment will be $" + monthly_payment.round(2).to_s

  prompt("Do you want to start over?")
  answer = gets.chomp
  break unless answer.downcase == 'y' || answer.downcase == 'yes'
  system('clear') || system('cls')
end

prompt("Thanks for using my loan calculator!")
