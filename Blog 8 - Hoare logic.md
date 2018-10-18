# Hoare logic
In class this week, we finished up our discussion of Hoare logic. Hoare logic is important as it sets logical rules for us to reason about the correctness of programs, both before, during, and after it runs. It specifically stresses the importance of a Hoare triple, which consists of a precondition, a command (or program), and a postcondition.

A pre-condition must be true prior to the execution of the program, or else the program doesn't run. During the execution of the code, the invariant must equal (be the same) for each iteration of execution of the program, and the post-condition must be true once the program is completed. To better illustrate this, let's look at this example:

```
#{z = (n-x) * y, where n is the initial value of x, x > 0 and z = 0}

x = 4
y = 5
z = 0

while x != 0
    global z += y
    global x -= 1
end

println(x)
println(y)
println(z)

#{z = (n-x) * y}
```

In this snippet of Julia code, let's first make sure the post condition is true, given the random numbers.  = (4-4) * 5 = 0 * 5 = 0. This is true.
Next, let's examine the invariant, which happens to be the same as the precondition. After two iterations of the while loop, x will be 2, z will now be 20, and y is still 5. Let's plug these values into the invariant:
10 = (4-2) * 5 = 2 * 5 = 10. This is true, and remains true for each execution of the loop.
Finally, let's check the post-condition. 20 = (4-0) * 5 = 4 * 5 = 20. This is true.

Because all conditions are true in the Hoare triple, the logic inside this program in that z = n * y at the end of the program holds true.

**I will be posting a report this Friday (10/19) which describes the concept of our class project. More to come then. Thanks for tuning in!**
