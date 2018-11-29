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

global income = 0
global rent = 0
global creditCardDebt = 0
global homeEquityLoan = 0
global carLoan = 0
global studentLoan = 0
global loansAndDebtTotal = 0
global gasAndOil = 0
global electricity = 0
global telephone = 0
global waterAndSewer = 0
global utilityTotal = 0
global lifeIns = 0
global autoIns = 0
global homeIns = 0
global healthIns = 0
global ltcIns = 0
global totalIns = 0
global emergencyFunds = 0
global collegeSavings = 0
global retirement = 0
global savingsAndInvestments = 0
global groceries = 0
global childCare = 0
global vacation = 0
global entertainment = 0
global clothing = 0
global gas = 0
global commuting = 0
global charity = 0
global medicalExpenses = 0
global miscTotal = 0
global totalIncome = 0
global totalExpenses = 0
global netIncome = 0

if(reportStyle == "n")
    print("Great! Let's start with your income. Please enter your income for the month: ")
    income = parse(Float32, readline())
    income = (income *12) / 52 #taking month, converting to yearly, making it weekly
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

    println("This is your PET")
    println("Income")
    println()
    print("1. Income: \$")
    @printf "%.2f" income
    println()
    println()
    println("Loans / Debt")
    #all the loans/debt was skipped, this needs to be fixed
    print("2. Mortgage/Rent: \$")
    @printf "%.2f" rent
    println()
    print("3. Credit Card Debt: \$")
    @printf "%.2f" creditCardDebt
    println()
    print("4. Home Equity  Loan: \$")
    @printf "%.2f" homeEquityLoan
    println()
    print("5. Car loan: \$")
    @printf "%.2f" carLoan
    println()
    print("6. Student loan: \$")
    @printf "%.2f" studentLoan
    println()
    print("Total Loans and Debt: \$")
    @printf "%.2f" loansAndDebtTotal
    println()
    println("Utilities")
    print("7. Gas/Oil: \$")
    @printf "%.2f" gasAndOil
    println()
    print("8. Electricity: \$")
    @printf "%.2f" electricity
    println()
    print("9. Telephone: \$")
    @printf "%.2f" telephone
    println()
    print("10. Water and Sewer: \$")
    @printf "%.2f" waterAndSewer
    println()
    print("Total Utilities: \$")
    @printf "%.2f" utilityTotal
    println()
    println("Insurance Premiums")
    print("11. Life Insurance: \$")
    @printf "%.2f" lifeIns
    println()
    print("12. Auto Insurance: \$")
    @printf "%.2f" autoIns
    println()
    print("13. Home Insurance: \$")
    @printf "%.2f" homeIns
    println()
    print("14. Health Insurance: \$")
    @printf "%.2f" healthIns
    println()
    print("15. Long Term Care: \$")
    @printf "%.2f" ltcIns
    println()
    print("Total Insurance Premiums: \$")
    @printf "%.2f" totalIns
    println()
    println()
    println("Savings and Investments")
    print("16. Emergency Fund: \$")
    @printf "%.2f" emergencyFunds
    println()
    print("17. College Savings: \$")
    @printf "%.2f" collegeSavings
    println()
    print("18. Retirement: \$")
    @printf "%.2f" retirement
    println()
    print("Total Savings and Investments: \$")
    @printf "%.2f" savingsAndInvestments
    println()
    println()
    println("Miscellaneous")
    print("19. Groceries: \$")
    @printf "%.2f" groceries
    println()
    print("20. Child Care: \$")
    @printf "%2f" childCare
    println()
    print("21. Vacation: \$")
    @printf "%.2f" vacation
    println()
    print("22. Entertainment: \$")
    @printf "%.2f" entertainment
    println()
    print("23. Clothing: \$")
    @printf "%.2f" clothing
    println()
    print("24. Gas: \$")
    @printf "%.2f" gas
    println()
    print("25. Commuting: \$")
    @printf "%.2f" commuting
    println()
    print("26. Charitable Contributions: \$")
    @printf "%.2f" charity
    println()
    print("27. Out-of-Pocket Medical Expenses: \$")
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
    print("Income minus Exenses: \$")
    @printf "%.2f" netIncome
    println()

    f = open("Report.txt", "w")
    write(f, "This is your PET \r\n")
    write(f, "Income\r\n")
    write(f, "1. Income: \$")
    @printf(f, "%.2f", income)
    write(f, "\r\n\r\nLoans / Debt")
    write(f, "\r\n2. Mortgage/Rent: \$")
    @printf(f, "%.2f", rent)
    write(f, "\r\n3. Credit Card Debt: \$")
    @printf(f, "%.2f", creditCardDebt)
    write(f, "\r\n4. Car loan debt: \$")
    @printf(f, "%.2f", carLoan)
    write(f, "\r\n5. Home equity loan: \$")
    @printf(f, "%.2f", homeEquityLoan)
    write(f, "\r\n6. Student loan debt: \$")
    @printf(f, "%.2f", studentLoan)
    write(f, "\r\nTotal Loans and Debt: \$")
    @printf(f, "%.2f", loansAndDebtTotal)
    write(f, "\r\n\r\nUtilities")
    write(f, "\r\n7. Gas/Oil: \$")
    @printf(f, "%.2f", gasAndOil)
    write(f, "\r\n8. Electricity: \$")
    @printf(f, "%.2f", electricity)
    write(f, "\r\n9. Telephone: \$")
    @printf(f, "%.2f", telephone)
    write(f, "\r\n10. Water and Sewer: \$")
    @printf(f, "%.2f", waterAndSewer)
    write(f, "\r\n\r\nInsurance Premiums")
    write(f, "\r\n11. Life Insurance: \$")
    @printf(f, "%.2f", lifeIns)
    write(f, "\r\n12. Auto Insurance: \$")
    @printf(f, "%.2f", autoIns)
    write(f, "\r\n13. Home Insurance: \$")
    @printf(f, "%.2f", homeIns)
    write(f, "\r\n14. Health Insurance: \$")
    @printf(f, "%.2f", healthIns)
    write(f, "\r\n15. Long Term Care: \$")
    @printf(f, "%.2f", ltcIns)
    write(f, "\r\nTotal Insurance Premiums: \$")
    @printf(f, "%.2f", totalIns)
    write(f, "\r\n\r\nSavings and Investments")
    write(f, "\r\n16. Emergency Fund: \$")
    @printf(f, "%.2f", emergencyFunds)
    write(f, "\r\n17. College Savings: \$")
    @printf(f, "%.2f", collegeSavings)
    write(f, "\r\n18. Retirement: \$")
    @printf(f, "%.2f", retirement)
    write(f, "\r\nTotal Savings and Investments: \$")
    @printf(f, "%.2f", savingsAndInvestments)
    write(f, "\r\n\r\nMiscellaneous")
    write(f, "\r\n19. Groceries: \$")
    @printf(f, "%.2f", groceries)
    write(f, "\r\n20. Child Care: \$")
    @printf(f, "%.2f", childCare)
    write(f, "\r\n21. Vacation: \$")
    @printf(f, "%.2f", vacation)
    write(f, "\r\n22. Entertainment: \$")
    @printf(f, "%.2f", entertainment)
    write(f, "\r\n23. Clothing: \$")
    @printf(f, "%.2f", clothing)
    write(f, "\r\n24. Gas: \$")
    @printf(f, "%.2f", gas)
    write(f, "\r\n25. Commuting: \$")
    @printf(f, "%.2f", commuting)
    write(f, "\r\n26. Charitable Contributions: \$")
    @printf(f, "%.2f", charity)
    write(f, "\r\n27. Out-of-Pocket Medical Expenses: \$")
    @printf(f, "%.2f", medicalExpenses)
    write(f, "\r\nTotal Miscellaneous costs: \$")
    @printf(f, "%.2f", miscTotal)
    write(f, "\r\n\r\n\r\nTotal Income: \$")
    @printf(f, "%.2f", income)
    write(f, "\r\nTotal Expenses: \$")
    @printf(f, "%.2f", totalExpenses)
    write(f, "\r\nIncome minus Exenses: \$")
    @printf(f, "%.2f", netIncome)
    close(f)

    f = open("dataForNextReport.txt", "w")
    @printf(f, "%.2f", income)
    write(f, "\r\n")
    @printf(f, "%.2f", rent)
    write(f, "\r\n")
    @printf(f, "%.2f", creditCardDebt)
    write(f, "\r\n")
    @printf(f, "%.2f", homeEquityLoan)
    write(f, "\r\n")
    @printf(f, "%.2f", carLoan)
    write(f, "\r\n")
    @printf(f, "%.2f", studentLoan)
    write(f, "\r\n")
    @printf(f, "%.2f", gasAndOil)
    write(f, "\r\n")
    @printf(f, "%.2f", electricity)
    write(f, "\r\n")
    @printf(f, "%.2f", telephone)
    write(f, "\r\n")
    @printf(f, "%.2f", waterAndSewer)
    write(f, "\r\n")
    @printf(f, "%.2f", lifeIns)
    write(f, "\r\n")
    @printf(f, "%.2f", autoIns)
    write(f, "\r\n")
    @printf(f, "%.2f", homeIns)
    write(f, "\r\n")
    @printf(f, "%.2f", healthIns)
    write(f, "\r\n")
    @printf(f, "%.2f", ltcIns)
    write(f, "\r\n")
    @printf(f, "%.2f", emergencyFunds)
    write(f, "\r\n")
    @printf(f, "%.2f", collegeSavings)
    write(f, "\r\n")
    @printf(f, "%.2f", retirement)
    write(f, "\r\n")
    @printf(f, "%.2f", groceries)
    write(f, "\r\n")
    @printf(f, "%.2f", childCare)
    write(f, "\r\n")
    @printf(f, "%.2f", vacation)
    write(f, "\r\n")
    @printf(f, "%.2f", entertainment)
    write(f, "\r\n")
    @printf(f, "%.2f", clothing)
    write(f, "\r\n")
    @printf(f, "%.2f", gas)
    write(f, "\r\n")
    @printf(f, "%.2f", commuting)
    write(f, "\r\n")
    @printf(f, "%.2f", charity)
    write(f, "\r\n")
    @printf(f, "%.2f", medicalExpenses)

    close(f)



else
    oldInputArray = Array{Float64}(undef, 27)
    f = open("dataForNextReport.txt", "r")
    local i = 1
    for line in eachline(f)
        chomp(line)
        oldInputArray[i] = parse(Float64, line)
        i = i + 1
    end
    println("Below is your PET for the previous week. Please update any values accordingly (fields are weekly).")
     local tempincome = oldInputArray[1]
     local temprent = oldInputArray[2]
     local tempcreditCardDebt = oldInputArray[3]
     local temphomeEquityLoan = oldInputArray[4]
     local tempcarLoan = oldInputArray[5]
     local tempstudentLoan = oldInputArray[6]
     local tempgasAndOil = oldInputArray[7]
     local tempelectricity = oldInputArray[8]
     local temptelephone = oldInputArray[9]
     local tempwaterAndSewer = oldInputArray[10]
     local templifeIns = oldInputArray[11]
     local tempautoIns = oldInputArray[12]
     local temphomeIns = oldInputArray[13]
     local temphealthIns = oldInputArray[14]
     local templtcIns = oldInputArray[15]
     local tempemergencyFunds = oldInputArray[16]
     local tempcollegeSavings = oldInputArray[17]
     local tempretirement = oldInputArray[18]
     local tempgroceries = oldInputArray[19]
     local tempchildCare = oldInputArray[20]
     local tempvacation = oldInputArray[21]
     local tempentertainment = oldInputArray[22]
     local tempclothing = oldInputArray[23]
     local tempgas = oldInputArray[24]
     local tempcommuting = oldInputArray[25]
     local tempcharity = oldInputArray[26]
     local tempmedicalExpenses = oldInputArray[27]

     local temploansAndDebtTotal = 0
     local temputilityTotal = 0
     local temptotalExpenses = 0
     local temptotalIns = 0
     local tempsavingsAndInvestments = 0
     local tempmiscTotal = 0
     local tempnetIncome = 0

    while(true)
        print("1. Income: \$")
        @printf "%.2f" tempincome
        println()
        print("2. Mortgage/Rent: \$")
        @printf "%.2f" temprent
        println()
        print("3. Credit Card Debt: \$")
        @printf "%.2f" tempcreditCardDebt
        println()
        print("4. Home Equity  Loan: \$")
        @printf "%.2f" temphomeEquityLoan
        println()
        print("5. Car loan: \$")
        @printf "%.2f" tempcarLoan
        println()
        print("6. Student loan: \$")
        @printf "%.2f" tempstudentLoan
        println()
        print("7. Gas/Oil: \$")
        @printf "%.2f" tempgasAndOil
        println()
        print("8. Electricity: \$")
        @printf "%.2f" tempelectricity
        println()
        print("9. Telephone: \$")
        @printf "%.2f" temptelephone
        println()
        print("10. Water and Sewer: \$")
        @printf "%.2f" tempwaterAndSewer
        println()
        print("11. Life Insurance: \$")
        @printf "%.2f" templifeIns
        println()
        print("12. Auto Insurance: \$")
        @printf "%.2f" tempautoIns
        println()
        print("13. Home Insurance: \$")
        @printf "%.2f" temphomeIns
        println()
        print("14. Health Insurance: \$")
        @printf "%.2f" temphealthIns
        println()
        print("15. Long Term Care: \$")
        @printf "%.2f" templtcIns
        println()
        print("16. Emergency Fund: \$")
        @printf "%.2f" tempemergencyFunds
        println()
        print("17. College Savings: \$")
        @printf "%.2f" tempcollegeSavings
        println()
        print("18. Retirement: \$")
        @printf "%.2f" tempretirement
        println()
        print("19. Groceries: \$")
        @printf "%.2f" tempgroceries
        println()
        print("20. Child Care: \$")
        @printf "%.2f" tempchildCare
        println()
        print("21. Vacation: \$")
        @printf "%.2f" tempvacation
        println()
        print("22. Entertainment: \$")
        @printf "%.2f" tempentertainment
        println()
        print("23. Clothing: \$")
        @printf "%.2f" tempclothing
        println()
        print("24. Gas: \$")
        @printf "%.2f" tempgas
        println()
        print("25. Commuting: \$")
        @printf "%.2f" tempcommuting
        println()
        print("26. Charitable Contributions: \$")
        @printf "%.2f" tempcharity
        println()
        print("27. Out-of-Pocket Medical Expenses: \$")
        @printf "%.2f" tempmedicalExpenses
        println()
        println("Do you want to change anything? If so, enter the corresponding number in front, else type 28: ")
        choice = parse(Int32, readline())
        if(choice == 1)
            print("Enter your new income: \$")
            tempincome = parse(Float32, readline())
            println()
        elseif(choice == 2)
            print("Enter your mortgage/rent: \$")
            temprent = parse(Float32, readline())
            println()
        elseif(choice == 3)
            print("Enter your credit card debt payment: \$")
            tempcreditCardDebt = parse(Float32, readline())
            println()
        elseif(choice == 4)
            print("Enter your home equity loan payment: \$")
            temphomeEquityLoan = parse(Float32, readline())
            println()
        elseif(choice == 5)
            print("Enter your car loan payment: \$")
            tempcarLoan = parse(Float32, readline())
        elseif(choice == 6)
            print("Enter your student loan payment: \$")
            tempstudentLoan = parse(Float32, readline())
        elseif(choice == 7)
            print("Enter your gas and oil payment: \$")
            tempgasAndOil = parse(Float32, readline())
            println()
        elseif(choice == 8)
            print("Enter your electricity payment: \$")
            tempelectricity = parse(Float32, readline())
            println()
        elseif(choice == 9)
            print("Enter your telephone payment: \$")
            temptelephone = parse(Float32, readline())
            println()
        elseif(choice == 10)
            print("Enter your water and sewer payment: \$")
            tempwaterAndSewer = parse(Float32, readline())
            println()
        elseif(choice == 11)
            print("Enter your life insurance payment: \$")
            templifeIns = parse(Float32, readline())
            println()
        elseif(choice == 12)
            print("Enter your auto insurance payment: \$")
            tempautoIns = parse(Float32, readline())
            println()
        elseif(choice == 13)
            print("Enter your home insurance payment: \$")
            temphomeIns = parse(Float32, readline())
            println()
        elseif(choice == 14)
            print("Enter your health insurance payment: \$")
            temphealthIns = parse(Float32, readline())
            println()
        elseif(choice == 15)
            print("Enter your long-term care payment: \$")
            templtcIns = parse(Float32, readline())
            println()
        elseif(choice == 16)
            print("Enter your emergency funds savings: \$")
            tempemergencyFunds = parse(Float32, readline())
            println()
        elseif(choice == 17)
            print("Enter your college savings: \$")
            tempcollegeSavings = parse(Float32, readline())
            println()
        elseif(choice == 18)
            print("Enter your retirement savings: \$")
            tempretirement = parse(Float32, readline())
            println()
        elseif(choice == 19)
            print("Enter your groceries payments: \$")
            tempgroceries = parse(Float32, readline())
            println()
        elseif(choice == 20)
            print("Enter your child care payments: \$")
            tempchildCare = parse(Float32, readline())
            println()
        elseif(choice == 21)
            print("Enter your vacation savings/payments: \$")
            tempvacation = parse(Float32, readline())
            println()
        elseif(choice == 22)
            print("Enter your entertainment payments: \$")
            tempentertainment = parse(Float32, readline())
            println()
        elseif(choice == 23)
            print("Enter your clothing payments: \$")
            tempclothing = parse(Float32, readline())
            println()
        elseif(choice == 24)
            print("Enter your gas payments: \$")
            tempgas = parse(Float32, readline())
            println()
        elseif(choice == 25)
            print("Enter your commuting payments: \$")
            tempcommuting = parse(Float32, readline())
            println()
        elseif(choice == 26)
            print("Enter your charity payments: \$")
            tempcharity = parse(Float32, readline())
            println()
        elseif(choice == 27)
            print("Enter your medical expenses: \$")
            tempmedicalExpenses = parse(Float32, readline())
            println()
        else
            temploansAndDebtTotal = temprent + tempcreditCardDebt + temphomeEquityLoan + tempcarLoan + tempstudentLoan
            temptotalExpenses += temploansAndDebtTotal

            temputilityTotal = tempgasAndOil + tempelectricity + temptelephone + tempwaterAndSewer
            temptotalExpenses += temputilityTotal

            temptotalIns = templifeIns + tempautoIns + temphomeIns + temphealthIns + templtcIns
            temptotalExpenses += temptotalIns

            tempsavingsAndInvestments = tempemergencyFunds + tempcollegeSavings + tempretirement
            temptotalExpenses += tempsavingsAndInvestments

            tempmiscTotal = tempgroceries + tempchildCare + tempvacation + tempentertainment + tempclothing + tempgas + tempcommuting + tempcharity + tempmedicalExpenses
            temptotalExpenses += tempmiscTotal

            println("This is your PET")
            println("Income")
            println()
            print("1. Income: \$")
            @printf "%.2f" tempincome
            println()
            println()
            println("Loans / Debt")
            print("2. Mortgage/Rent: \$")
            @printf "%.2f" temprent
            println()
            print("3. Credit Card Debt: \$")
            @printf "%.2f" tempcreditCardDebt
            println()
            print("4. Home Equity  Loan: \$")
            @printf "%.2f" temphomeEquityLoan
            println()
            print("5. Car loan: \$")
            @printf "%.2f" tempcarLoan
            println()
            print("6. Student loan: \$")
            @printf "%.2f" tempstudentLoan
            println()
            print("Total Loans and Debt: \$")
            @printf "%.2f" temploansAndDebtTotal
            println()
            println("Utilities")
            print("7. Gas/Oil: \$")
            @printf "%.2f" tempgasAndOil
            println()
            print("8. Electricity: \$")
            @printf "%.2f" tempelectricity
            println()
            print("9. Telephone: \$")
            @printf "%.2f" temptelephone
            println()
            print("10. Water and Sewer: \$")
            @printf "%.2f" tempwaterAndSewer
            println()
            print("Total Utilities: \$")
            @printf "%.2f" temputilityTotal
            println()
            println("Insurance Premiums")
            print("11. Life Insurance: \$")
            @printf "%.2f" templifeIns
            println()
            print("12. Auto Insurance: \$")
            @printf "%.2f" tempautoIns
            println()
            print("13. Home Insurance: \$")
            @printf "%.2f" temphomeIns
            println()
            print("14. Health Insurance: \$")
            @printf "%.2f" temphealthIns
            println()
            print("15. Long Term Care: \$")
            @printf "%.2f" templtcIns
            println()
            print("Total Insurance Premiums: \$")
            @printf "%.2f" temptotalIns
            println()
            println()
            println("Savings and Investments")
            print("16. Emergency Fund: \$")
            @printf "%.2f" tempemergencyFunds
            println()
            print("17. College Savings: \$")
            @printf "%.2f" tempcollegeSavings
            println()
            print("18. Retirement: \$")
            @printf "%.2f" tempretirement
            println()
            print("Total Savings and Investments: \$")
            @printf "%.2f" tempsavingsAndInvestments
            println()
            println()
            println("Miscellaneous")
            print("19. Groceries: \$")
            @printf "%.2f" tempgroceries
            println()
            print("20. Child Care: \$")
            @printf "%2f" tempchildCare
            println()
            print("21. Vacation: \$")
            @printf "%.2f" tempvacation
            println()
            print("22. Entertainment: \$")
            @printf "%.2f" tempentertainment
            println()
            print("23. Clothing: \$")
            @printf "%.2f" tempclothing
            println()
            print("24. Gas: \$")
            @printf "%.2f" tempgas
            println()
            print("25. Commuting: \$")
            @printf "%.2f" tempcommuting
            println()
            print("26. Charitable Contributions: \$")
            @printf "%.2f" tempcharity
            println()
            print("27. Out-of-Pocket Medical Expenses: \$")
            @printf "%.2f" tempmedicalExpenses
            println()
            print("Total Miscellaneous costs: \$")
            @printf "%.2f" tempmiscTotal
            println()
            println()
            println()
            print("Total Income: \$")
            @printf "%.2f" tempincome
            println()
            print("Total Expenses: \$")
            @printf "%.2f" temptotalExpenses
            println()
            tempnetIncome = tempincome - temptotalExpenses
            print("Income minus Exenses: \$")
            @printf "%.2f" tempnetIncome
            println()

            f = open("Report.txt", "w")
            write(f, "This is your PET \r\n")
            write(f, "Income\r\n")
            write(f, "1. Income: \$")
            @printf(f, "%.2f", tempincome)
            write(f, "\r\n\r\nLoans / Debt")
            write(f, "\r\n2. Mortgage/Rent: \$")
            @printf(f, "%.2f", temprent)
            write(f, "\r\n3. Credit Card Debt: \$")
            @printf(f, "%.2f", tempcreditCardDebt)
            write(f, "\r\n4. Car loan debt: \$")
            @printf(f, "%.2f", tempcarLoan)
            write(f, "\r\n5. Home equity loan: \$")
            @printf(f, "%.2f", temphomeEquityLoan)
            write(f, "\r\n6. Student loan debt: \$")
            @printf(f, "%.2f", tempstudentLoan)
            write(f, "\r\nTotal Loans and Debt: \$")
            @printf(f, "%.2f", temploansAndDebtTotal)
            write(f, "\r\n\r\nUtilities")
            write(f, "\r\n7. Gas/Oil: \$")
            @printf(f, "%.2f", tempgasAndOil)
            write(f, "\r\n8. Electricity: \$")
            @printf(f, "%.2f", tempelectricity)
            write(f, "\r\n9. Telephone: \$")
            @printf(f, "%.2f", temptelephone)
            write(f, "\r\n10. Water and Sewer: \$")
            @printf(f, "%.2f", tempwaterAndSewer)
            write(f, "\r\n\r\nInsurance Premiums")
            write(f, "\r\n11. Life Insurance: \$")
            @printf(f, "%.2f", templifeIns)
            write(f, "\r\n12. Auto Insurance: \$")
            @printf(f, "%.2f", tempautoIns)
            write(f, "\r\n13. Home Insurance: \$")
            @printf(f, "%.2f", temphomeIns)
            write(f, "\r\n14. Health Insurance: \$")
            @printf(f, "%.2f", temphealthIns)
            write(f, "\r\n15. Long Term Care: \$")
            @printf(f, "%.2f", templtcIns)
            write(f, "\r\nTotal Insurance Premiums: \$")
            @printf(f, "%.2f", temptotalIns)
            write(f, "\r\n\r\nSavings and Investments")
            write(f, "\r\n16. Emergency Fund: \$")
            @printf(f, "%.2f", tempemergencyFunds)
            write(f, "\r\n17. College Savings: \$")
            @printf(f, "%.2f", tempcollegeSavings)
            write(f, "\r\n18. Retirement: \$")
            @printf(f, "%.2f", tempretirement)
            write(f, "\r\nTotal Savings and Investments: \$")
            @printf(f, "%.2f", tempsavingsAndInvestments)
            write(f, "\r\n\r\nMiscellaneous")
            write(f, "\r\n19. Groceries: \$")
            @printf(f, "%.2f", tempgroceries)
            write(f, "\r\n20. Child Care: \$")
            @printf(f, "%.2f", tempchildCare)
            write(f, "\r\n21. Vacation: \$")
            @printf(f, "%.2f", tempvacation)
            write(f, "\r\n22. Entertainment: \$")
            @printf(f, "%.2f", tempentertainment)
            write(f, "\r\n23. Clothing: \$")
            @printf(f, "%.2f", tempclothing)
            write(f, "\r\n24. Gas: \$")
            @printf(f, "%.2f", tempgas)
            write(f, "\r\n25. Commuting: \$")
            @printf(f, "%.2f", tempcommuting)
            write(f, "\r\n26. Charitable Contributions: \$")
            @printf(f, "%.2f", tempcharity)
            write(f, "\r\n27. Out-of-Pocket Medical Expenses: \$")
            @printf(f, "%.2f", tempmedicalExpenses)
            write(f, "\r\nTotal Miscellaneous costs: \$")
            @printf(f, "%.2f", tempmiscTotal)
            write(f, "\r\n\r\n\r\nTotal Income: \$")
            @printf(f, "%.2f", tempincome)
            write(f, "\r\nTotal Expenses: \$")
            @printf(f, "%.2f", temptotalExpenses)
            write(f, "\r\nIncome minus Exenses: \$")
            @printf(f, "%.2f", tempnetIncome)
            close(f)

            f = open("dataForNextReport.txt", "w")
            @printf(f, "%.2f", tempincome)
            write(f, "\r\n")
            @printf(f, "%.2f", temprent)
            write(f, "\r\n")
            @printf(f, "%.2f", tempcreditCardDebt)
            write(f, "\r\n")
            @printf(f, "%.2f", temphomeEquityLoan)
            write(f, "\r\n")
            @printf(f, "%.2f", tempcarLoan)
            write(f, "\r\n")
            @printf(f, "%.2f", tempstudentLoan)
            write(f, "\r\n")
            @printf(f, "%.2f", tempgasAndOil)
            write(f, "\r\n")
            @printf(f, "%.2f", tempelectricity)
            write(f, "\r\n")
            @printf(f, "%.2f", temptelephone)
            write(f, "\r\n")
            @printf(f, "%.2f", tempwaterAndSewer)
            write(f, "\r\n")
            @printf(f, "%.2f", templifeIns)
            write(f, "\r\n")
            @printf(f, "%.2f", tempautoIns)
            write(f, "\r\n")
            @printf(f, "%.2f", temphomeIns)
            write(f, "\r\n")
            @printf(f, "%.2f", temphealthIns)
            write(f, "\r\n")
            @printf(f, "%.2f", templtcIns)
            write(f, "\r\n")
            @printf(f, "%.2f", tempemergencyFunds)
            write(f, "\r\n")
            @printf(f, "%.2f", tempcollegeSavings)
            write(f, "\r\n")
            @printf(f, "%.2f", tempretirement)
            write(f, "\r\n")
            @printf(f, "%.2f", tempgroceries)
            write(f, "\r\n")
            @printf(f, "%.2f", tempchildCare)
            write(f, "\r\n")
            @printf(f, "%.2f", tempvacation)
            write(f, "\r\n")
            @printf(f, "%.2f", tempentertainment)
            write(f, "\r\n")
            @printf(f, "%.2f", tempclothing)
            write(f, "\r\n")
            @printf(f, "%.2f", tempgas)
            write(f, "\r\n")
            @printf(f, "%.2f", tempcommuting)
            write(f, "\r\n")
            @printf(f, "%.2f", tempcharity)
            write(f, "\r\n")
            @printf(f, "%.2f", tempmedicalExpenses)

            close(f)


            break;
        end

    end
    close(f)
end
