println("Welcome home to your PET! I am your Personal Expenses Tracker and I'm going to make the day easier for you.")
print("Let's start with something simple. What's your name? ")
userName = chomp(readline()) #chomp gets rid of endlines
println()
print("Hi " * userName * "! Do you want to use a previous report or start a new one? (p for previous, n for new) ")
while(true)
    global reportStyle = chomp(readline()) #global variables declared inside loop logic/functions in Julia
    lowercase(reportStyle)
    if(reportStyle == "p" || reportStyle == "n")
        break
    end
    print("I don't think I understood that. Try again using 'p' or 'n': ")
end

println(reportStyle)
