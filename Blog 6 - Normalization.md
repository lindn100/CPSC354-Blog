# Normalization by Evaluation
In class this week, we began to discuss the idea of normalization by evaluation. Specifically, a topic that interested me in class was the idea of using a reduction set such that L ----> N (a language goes to the natural numbers, syntax and semantics). Then we looked at two scenarios:

  1. Starting as with a natural number as input, then translating to the language, then translating back to a natural number
  2. Starting with an expression in the language, reducing to a natural number, then converting back to the language

In case 1, we know that the natural number that we start with as input will be the same natural number as the output. This is true because all expressions reduce down to unique natural numbers, thus will be the same unique natural number as before.

However, in case 2, we are not guaranteed to return to the same expression as before. Consider the logic below:

> 3 + 2 = 5
> 1+(1+1) + (1 + 1)
> this equation is rewritten as 5
> However, rewriting 5 back to an expression can be done as
> (((1+1)+1)+1)+1, which is different from the first equation

We could show this in a simple code example in Julia by printing the parenthesis in different ways, but I believe the idea serves as a justification for itself. Instead, let's look at Julia's implementation of types, in particular, mutable composite types:

```
mutable struct Person
    name::AbstractString
    male::Bool
    age::Float64
    children::Int
end

ryan = Person("Ryan", true, 21, 0)
println(ryan.name);
println("Does Ryan have children?");
if(ryan.children != 0)
    println("yup")
else
    println("nope")
end
```

Storing data using this strategy will be great for keeping track of multiple variables for different objects of the same type. For example, storing in last week's financial reports to compare to this week's may be of use, if I can store it in these types or convert to a file to pull from.


**Next week I will continue to tackle exercises provided by Prof. Kurz, reviewing topics we cover in class, and hopefully start to gain some progress of my software. Thanks for reading!**
