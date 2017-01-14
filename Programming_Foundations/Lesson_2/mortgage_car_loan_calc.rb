puts("What is the loan amount?")
loan_amount = gets.chomp.to_i

puts("What is the monthly interest rate?")
interest = gets.chomp.to_i
monthly_interest = interest / 100

puts("How long will you have this loan for (in months)?")
loan_duration = gets.chomp.to_i

def monthly_payment(p, j, n)
  p * (j / (1 - (1 + j)**(-n)))
end

puts monthly_payment(loan_amount, monthly_interest, loan_duration)
