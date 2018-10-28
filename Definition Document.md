# Definition Document
For our project, we must plan what we want the user's experience to be, and how we plan to implement it. Below is a drawn-picture, which helped us to visualize the steps we need to take. Explanation of each step is below the picture.

![alt text](https://raw.githubusercontent.com/lindn100/CPSC354-Blog/master/definiton1.jpg)

1. User starts program. We will be doing this by command line using 'julia PET.jl' (Recall that our program is the Personal Expense Tracker). This entails that our program will be implemeneted in this PET.jl file.

2. The user will then receive a printed description of our project in the console, so they know the purpose of the application. This will help with clarity on how to proceed. This can be stored in a simple string. Next, the user will be prompted if they want to import a previous report, or start new.

3. If they type in 'previous' (or something along those lines), then they will be prompted for a file name, in which File I/O will occurr to retrieve said file. Using the retrieved file, it will store those values into the corresponding variables in our program. On the other hand, if the user selects 'new', then each variable will be set to 0 intially.

4.  We will begin going through each field in the tracker now. We will be using [this Household Budget Worksheet by Kiplinger](https://www.kiplinger.com/tool/spending/T007-S001-budgeting-worksheet-a-household-budget-for-today-a/index.php) as a basis, but we are in no means limited to expanding or decreasing this list. For a new list, we will go one by one, asking for inputs for each field. Expect lots of variables to store these values. For a previously imported list, the application will continuously ask the program which field they would like to change until they type 'done'. This will be useful because if only a couple of fields modified this week compared to last weeks, you won't have to update every field again.

5. We want to run some analysis on the inputs given by the user. We first want to see if their expenses outweigh their income for the week. If this is true, then we want to target the areas where spending may be too high. Perhaps you may not want to go shopping this week, or spend a little more on groceries to eliminate going to eat out a couple nights. Maybe your rent seems to be far too high given your current income. Things to this nature.

6. Once we have some concrete analysis on what we think could be improved, we want to print that to the user as a suggestion. 

7. Finally, we will print a report which includes all of the fields and their inputs, along with our suggestions on how to improve their current financial situation. This quick process of inputting expenses and income ought to help the user spend less time considering what not to spend so much on this week, or if they can splurge if they want to.


**This serves as our Definition Document for our class project. It explains the user's experience in our program, and how we plan to implement it. Posted: 10/28/18**
