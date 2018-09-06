# Syntax
This week in class, our main topics are:
* Soundness
* Completeness
* Syntax
* Semantics

Semantics are a map from which we start at syntax and give it meaning. In addition, soundness is the idea that the rules we put in place are actually correct. And moreover, completeness is the principle that we need express all the rules to complete our methods of computation.

**However, before all else, we must explore the [syntax](https://docs.julialang.org/en/v1/manual/variables/) of Julia!**

First and foremost, throw your syntactical knowledge of C++, Java, C#, or any other strongly typed programming language out the window. There are no {}'s, no ;'s, and no main methods. Look at how simple a Hello-World program looks:
```
println("Hello World")
```
That might seem a little too basic, as anyone could've println'd. Let's look at a function in Julia (similar to methods in other languages):

```
function areaofRectangle(length, width)
return length * width
end
```

In this code, notice the dynamic variable declaration, as well as the necessity to end a function, rather than having curly brackets to close it off. These two snippets will be the foundation of Julia moving forward.

## Quick Note on Multiple dispatch
Last week, I hinted at a core concept of Julia: multiple dispatch. Julia is not an Object-Oriented language--it uses multiple dispatch instead. At runtime when a function is called, Julia will figure out which function should be called based on the types of its arguments. [Here](https://armchairecology.blog/julia-in-ecology-why-multiple-dispatch-is-good/) is a great blog article that clearly demonstrates the power of multiple dispatch through a cooking example.

**I will continue to explore the syntax of Julia so that I can proficiently program the core topics related to this class.**
