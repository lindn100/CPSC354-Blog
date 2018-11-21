using Printf

println("Welcome home to your PET! I am your Personal Expenses Tracker and I'm going to make the day easier for you.")
print("Let's start with something simple. What's your name? ")
userName = chomp(readline()) #chomp gets rid of endlines
println()
print("Hi " * userName * "! Do you want to use a previous report or start a new one? (p for previous, n for new): ") #string concat uses *
while(true)
    global reportStyle = chomp(readline()) #global variables declared inside loop logic/functions in Julia
    lowercase(reportStyle)
    if(reportStyle == "p" || reportStyle == "n")
        break
    end
    print("I don't think I understood that. Try again using 'p' or 'n': ")
end

#declaring variables for fields

income = 0
rent = 0
creditCardDebt = 0
homeEquityLoan = 0
carLoan = 0
studentLoan = 0
loansAndDebtTotal = 0
gasAndOil = 0
electricity = 0
telephone = 0
waterAndSewer = 0
utilityTotal = 0
lifeIns = 0
autoIns = 0
homeIns = 0
healthIns = 0
ltcIns = 0
totalIns = 0
emergencyFunds = 0
college = 0
retirement = 0
savingsAndInvestments = 0
groceries = 0
childCare = 0
vacation = 0
entertainment = 0
clothing = 0
gas = 0
commuting = 0
charity = 0
medicalExpenses = 0
miscTotal = 0
totalIncome = 0
totalExpenses = 0
netIncome = 0

if(reportStyle == "n")
    print("Great! Let's start with your income. Please enter your income for the month: ")
    income = parse(Float32, readline())
    income = (income *12) / 52 #taking month, converting to yearly, making it yearly
    println()
    print("Now, let move onto loans and debt. Please enter your mortgage/rent payment for the month: ")
    rent  = parse(Float32, readline())
    rent = (rent * 12) / 52
    print("Please enter your credit card debt payment for the month: ")
    creditCardDebt = parse(Float32, readline())
    creditCardDebt = (creditCardDebt * 12) / 52
    println()
    print("Please enter your home equity loan payment for the month: ")
    homeEquityLoan = parse(Float32, readline())
    homeEquityLoan = (homeEquityLoan * 12) / 52
    println()
    print("Please enter your car loan payment for the month: ")
    carLoan = parse(Float32, readline())
    carLoan = (carLoan * 12) / 52
    println()
    print("Please enter your student loan payment for the month: ")
    studentLoan = parse(Float32, readline())
    studentLoan = (studentLoan * 12) / 52
    println()

    loansAndDebtTotal = rent + creditCardDebt + homeEquityLoan + carLoan + studentLoan
    totalExpenses += loansAndDebtTotal
    print("Your total Loans and Debt total payments for this week is: \$")
    @printf "%.2f" loansAndDebtTotal
    println()

    print("Let's move onto Utilities. Please enter your gas and oil payments for the month: ")
    gasAndOil = parse(Float32, readline())
    gasAndOil = (gasAndOil * 12) / 52
    println()
    print("Please enter your electricity payment for the month: ")
    electricity = parse(Float32, readline())
    electricity = (electricity * 12) / 52
    println()
    print("Please enter your telephone payment for the month: ")
    telephone = parse(Float32, readline())
    telephone = (telephone * 12) / 52
    println()
    print("Please enter your water and sewer payment for the month: ")
    waterAndSewer = parse(Float32, readline())
    waterAndSewer = (waterAndSewer * 12) / 52
    println()
    utilityTotal = gasAndOil + electricity + telephone + waterAndSewer
    totalExpenses += utilityTotal
    print("Your total utility payments for this week is: \$")
    @printf "%.2f" utilityTotal
    println()

    print("Next up is insurance payments. Please enter your life insurance payment for the month: ")
    lifeIns = parse(Float32, readline())
    lifeIns = (lifeIns * 12) / 52
    println()
    print("Please enter your auto insurance payment for the month: ")
    autoIns = parse(Float32, readline())
    autoIns = (autoIns * 12) / 52
    println()
    print("Please enter your home/renter's insurance payment for the month: ")
    homeIns = parse(Float32, readline())
    homeIns = (homeIns * 12) / 52
    println()
    print("Please enter your health insurance payment for the month: ")
    healthIns = parse(Float32, readline())
    healthIns = (healthIns * 12) / 52
    println()
    print("Please enter your Long Term Care payment for the month: ")
    ltcIns = parse(Float32, readline())
    ltcIns = (ltcIns * 12) / 52
    totalIns = lifeIns + autoIns + homeIns + healthIns + ltcIns
    totalExpenses += totalIns
    print("Your total insurance payments for this week is: \$")
    @printf "%.2f" totalIns
    println()

    println()
    print("Now, let's focus on Savings and Investments. Please enter your emergency fund savings for the month: ")
    emergencyFunds = parse(Float32, readline())
    emergencyFunds = (emergencyFunds * 12) / 52
    println()
    print("Please enter your college savings for the month: ")
    collegeSavings = parse(Float32, readline())
    collegeSavings = (collegeSavings * 12) / 52
    println()
    print("Please enter your retirement savings for the month: ")
    retirement = parse(Float32, readline())
    retirement = (retirement * 12) / 52
    savingsAndInvestments = emergencyFunds + collegeSavings + retirement
    totalExpenses += savingsAndInvestments
    print("Your total savings and investments for this week is: \$")
    @printf "%.2f" savingsAndInvestments
    println()

    println()
    print("Finally, let's note your miscellaneous expenses. Please enter your groceries payment for the month: ")
    groceries = parse(Float32, readline())
    groceries = (groceries * 12) / 52
    println()
    print("Please enter your child care payment for the month: ")
    childCare = parse(Float32, readline())
    childCare = (childCare * 12) / 52
    println()
    print("Please enter your vacation payment for the month: ")
    vacation = parse(Float32, readline())
    vacation = (vacation * 12) / 52
    println()
    print("Please enter your entertainment payment for the month: ")
    entertainment = parse(Float32, readline())
    entertainment = (entertainment * 12) / 52
    println()
    print("Please enter your clothing payment for the month: ")
    clothing = parse(Float32, readline())
    clothing = (clothing * 12) / 52
    println()
    print("Please enter your gas payment for the month: ")
    gas = parse(Float32, readline())
    gas = (gas * 12) / 52
    println()
    print("Please enter your commuting payment for the month: ")
    commuting = parse(Float32, readline())
    commuting = (commuting * 12) / 52
    println()
    print("Please enter your charitable contribution for the month: ")
    charity = parse(Float32, readline())
    charity = (charity * 12) / 52
    println()
    print("Please enter your out of pocket medical expenses for the month: ")
    medicalExpenses = parse(Float32, readline())
    medicalExpenses = (medicalExpenses * 12) / 52
    miscTotal = groceries + childCare + vacation + entertainment + clothing + gas + commuting + charity + medicalExpenses
    totalExpenses += miscTotal
    print("Your total miscellaneous expenses for this week is: \$")
    @printf "%.2f" miscTotal
    println()
    println()

else
    #ask for file name, load stuff in from the file
end

println("This is your PET")
println("Income")
println()
print("1. Income: \$")
@printf "%.2f" income
println()
println()
println("Loans / Debt")
print("2. Gas/Oil: \$")
@printf "%.2f" gasAndOil
println()
print("3. Electricity: \$")
@printf "%.2f" electricity
println()
print("4. Telephone: \$")
@printf "%.2f" electricity
println()
print("5. Water and Sewer: \$")
@printf "%.2f" waterAndSewer
println()
print("Total Loans and Debt: \$")
@printf "%.2f" loansAndDebtTotal
println()
println()
println("Insurance Premiums")
print("6. Life Insurance: \$")
@printf "%.2f" lifeIns
println()
print("7. Auto Insurance: \$")
@printf "%.2f" autoIns
println()
print("8. Home Insurance: \$")
@printf "%.2f" homeIns
println()
print("9. Health Insurance: \$")
@printf "%.2f" healthIns
println()
print("10. Long Term Care: \$")
@printf "%.2f" ltcIns
println()
print("Total Insurance Premiums: \$")
@printf "%.2f" totalIns
println()
println()
println("Savings and Investments")
print("11. Emergency Fund: \$")
@printf "%.2f" emergencyFunds
println()
print("12. College Savings: \$")
@printf "%.2f" collegeSavings
println()
print("13. Retirement: \$")
@printf "%.2f" retirement
println()
print("Total Savings and Investments: \$")
@printf "%.2f" savingsAndInvestments
println()
println()
println("Miscellaneous")
print("14. Groceries: \$")
@printf "%.2f" groceries
println()
print("15. Child Care: \$")
@printf "%.2f" childCare
println()
print("16. Vacation: \$")
@printf "%.2f" vacation
println()
print("17. Entertainment: \$")
@printf "%.2f" entertainment
println()
print("18. Clothing: \$")
@printf "%.2f" clothing
println()
print("19. Gas: \$")
@printf "%.2f" gas
println()
print("20. Commuting: \$")
@printf "%.2f" commuting
println()
print("21. Charitable Contributions: \$")
@printf "%.2f" charity
println()
print("22. Out-of-Pocket Medical Expenses: \$")
@printf "%.2f" medicalExpenses
println()
print("Total Miscellaneous costs: \$")
@printf "%.2f" miscTotal
println()
println()
println()
print("Total Income: \$")
@printf "%.2f" income
println()
print("Total Expenses: \$")
@printf "%.2f" totalExpenses
println()
netIncome = income - totalExpenses
print("Income minus Expenses: \$")
@printf "%.2f" netIncome
println()
#do file IO to file

f = open("Report.txt", "w")
write(f, "This is your PET \r\n")
write(f, "Income\r\n")
write(f, "1. Income: \$")
@printf(f,"%.2f", income)
write(f, "\r\n\r\nLoans / Debt")
write(f, "\r\m2. Rent/Mortgage: \$")
@printf(f, "%.2f", rent)
write(f, "\r\n3. Gas/Oil: \$")
@printf(f, "%.2f", gasAndOil)
write(f, "\r\n4. Electricity: \$")
@printf(f, "%.2f", electricity)
write(f, "\r\n5. Telephone: \$")
@printf(f, "%.2f", electricity)
write(f, "\r\n6. Water and Sewer: \$")
@printf(f,"%.2f", waterAndSewer)
write(f, "\r\nTotal Loans and Debt: \$")
@printf(f,"%.2f", loansAndDebtTotal)
write(f, "\r\n\r\nInsurance Premiums")
write(f, "\r\n7. Life Insurance: \$")
@printf(f,"%.2f", lifeIns)
write(f, "\r\n8. Auto Insurance: \$")
@printf(f, "%.2f", autoIns)
write(f, "\r\n9. Home Insurance: \$")
@printf(f, "%.2f", homeIns)
write(f, "\r\n10. Health Insurance: \$")
@printf(f, "%.2f", healthIns)
write(f, "\r\n11. Long Term Care: \$")
@printf(f, "%.2f", ltcIns)
write(f, "\r\nTotal Insurance Premiums: \$")
@printf(f,"%.2f", totalIns)
write(f, "\r\n\r\nSavings and Investments")
write(f, "\r\n12. Emergency Fund: \$")
@printf(f, "%.2f", emergencyFunds)
write(f, "\r\n13. College Savings: \$")
@printf(f, "%.2f", collegeSavings)
write(f, "\r\n14. Retirement: \$")
@printf(f, "%.2f", retirement)
write(f, "\r\nTotal Savings and Investments: \$")
@printf(f, "%.2f", savingsAndInvestments)
write(f, "\r\n\r\nMiscellaneous")
write(f, "\r\n15. Groceries: \$")
@printf(f, "%.2f", groceries)
write(f, "\r\n16. Child Care: \$")
@printf(f, "%.2f", childCare)
write(f, "\r\n17. Vacation: \$")
@printf(f, "%.2f", vacation)
write(f, "\r\n18. Entertainment: \$")
@printf(f, "%.2f", entertainment)
write(f, "\r\n19. Clothing: \$")
@printf(f, "%.2f", clothing)
write(f, "\r\n20. Gas: \$")
@printf(f, "%.2f", gas)
write(f, "\r\n21. Commuting: \$")
@printf(f, "%.2f", commuting)
write(f, "\r\n22. Charitable Contributions: \$")
@printf(f, "%.2f", charity)
write(f, "\r\n23. Out-of-Pocket Medical Expenses: \$")
@printf(f, "%.2f", medicalExpenses)
write(f, "\r\nTotal Miscellaneous costs: \$")
@printf(f, "%.2f", miscTotal)
write(f, "\r\n\r\n\r\nTotal Income: \$")
@printf(f, "%.2f", income)
write(f, "\r\nTotal Expenses: \$")
@printf(f, "%.2f", totalExpenses)
write(f, "\r\nIncome minus Expenses: \$")
@printf(f, "%.2f", netIncome)

write(f, "\n*** Recommendations ***\n")
if(groceries > 0.15*income)
    write(f, "\nWe recommend you spend less on groceries. Groceries expenses should not exceed more than 15% of your income.\n")
elseif(rent > 0.3*income)
  write(f, "\nWe recommend you spend less on rent. Rent expenses should not exceed more than 30% of your income.\n")
elseif(entertainment > 0.05*income)
  write(f, "\nWe recommend you spend less on entertainment. Entertainment expenses should not exceed more than 5% of your income.\n")
elseif(clothing > 0.05*income)
    write(f, "\nWe recommend you spend less on clothing. Clothing expenses should not exceed more than 5% of your income.\n")
elseif(loansAndDebtTotal > 0.1*income)
  write(f, "\nWe recommend you reduce your debt. Debt repayment expenses should not exceed more than 10% of your income.\n")
elseif(utilityTotal > 0.1*income)
  write(f, "\nWe recommend you reduce your utility expenses. Utility expenses should not exceed more than 10% of your income.\n")
elseif(utilityTotal > 0.1*income)
  write(f, "\nWe recommend you reduce your utility expenses. Utility expenses should not exceed more than 10% of your income.\n")  
elseif(savingsAndInvestments > 0.1*income)
  write(f, "\nYour savings and investments do not exceed more than 10% of your income.\n") 
elseif(totalIns > 0.15*income)
  write(f, "\nDo not spend more than 15% of your income on insurance.\n") 
end
close(f)
