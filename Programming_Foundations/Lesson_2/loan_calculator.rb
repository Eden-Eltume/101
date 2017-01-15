def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def prompt(message)
  puts "=> #{message}"
end

def get_data(text)
  loop do
    puts prompt(text)
    input = gets.chomp.strip
    return input.to_f if valid_number?(input) && input.to_f > 0
  end
end

prompt("Welcome to Mortgage/Car Loan Calculator!")

loop do
  # Get input
  loan_amount = get_data("What is the loan amount?")
  annual_interest = get_data("What is the monthly interest rate in percent?")
  loan_in_years = get_data("What is the loan duration in years?")

  # Perform calculation
  loan_in_months = loan_in_years * 12
  monthly_interest = (annual_interest / 100) / 12

  monthly_payment = loan_amount * (monthly_interest /
                                  (1 - (1 + monthly_interest)**-loan_in_months))

  # Output
  puts "---------------------------------------------------"
  puts "Your monthly payment is #{monthly_payment.round(2)}"
  puts "---------------------------------------------------"

  # Perform another calculation?
  print "Another calculation? (y/n): "
  answer = gets.chomp.strip.downcase

  if answer == "yes"
    redo
  elsif answer == "y"
    redo
  else
    break
  end
end

puts "Thank you for using our calculator."
