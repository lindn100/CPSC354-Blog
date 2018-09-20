# Title
Hey there! This week, our class is still focusing on Abstract Reduction Systems, but narrowing down on the question: How do we know when/if a reduction system terminates?

A nifty trick to determine an answer this question is to assign each element in your set A to a value in the natural numbers. Create a function such that A --> N (the natural numbers). Now this function implies that if a --> b, then f(a) > f(b).
This proves termination by because each reduction makes the new element smaller in the natural numbers, and the natural numbers have a terminating final value (which is 0).

To understand this more in depth, we discussed a recursive function used to calculate factorial in class. In last week's blog, I calculated the Fibonacci sequence in Julia, and the same concept could be applied to that as well.

This week, I want to explore a field in Julia which I know I will utilize in my software: File I/O. Let's examine the code snippet below:

```
fname = "testFile.txt"
# using do means the file is closed automatically
open(fname,"r") do f
    for line in eachline(f)
        println(line)
    end
end

#Reference: https://juliabyexample.helpmanual.io/#Input-Output
```

The above code will open a file named testFile and read in each line, and print it out. This could be very useful for the future.

I am more-so concerned about writing to files, as I hope my software will generate a financial report when requested. This means I need to be able to write to a file. Let's examine outputting a file in Julia:

```
outputFile = "outputFile.txt"
# writing to files is very similar:
f = open(outputfile, "w")
# both print and println can be used as usual but with f as their first argument
println(f, "Hello")
print(f, "I'm Bob")
print(f, " and I'm cool")
close(f)

#Same reference as above
```

Output is very similar to input in Julia, except the placement of some variables (syntax). I feel comfortable in my research of file I/O to generate a possible .txt report

**That's all for me this week. Maybe next week I'll begin on my software, creating some variables and documenting some progress. Have a great week!**
