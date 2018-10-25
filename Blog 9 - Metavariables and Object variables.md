# Metavariables and Object Variables
In class this week, we discussed universal algebra and as part of the discussion the notion of metavariables vs. object variables came up.

From a programming language perspective, a metalanguage is a language used to talk about a language, possibly to specify it or to study its properties.
When a language A is used as metalanguage to talk about a language B, B is called the object language.
Metalanguage helps in describing the concepts, rules and objects associated with a particular programming language.

In computer science, a well known example is Lisp, a language that is its own meta language, and has been the first programming language to have that property. Lisp programs can be syntactically represented as a Lisp data structure. The semantics of Lisp is also expressed in Lisp, since the first Lisp interpreter was written in Lisp.

The strongest legacy of Lisp in the Julia language is its metaprogramming support. Like Lisp, Julia represents its own code as a data structure of the language itself. Since code is represented by objects that can be created and manipulated from within the language, it is possible for a program to transform and generate its own code. 

In Julia, the execution of raw source code takes place in two stages:
Stage 1 is when your raw Julia code is parsed — converted into a form that is suitable for execution. The result of this is an abstract syntax tree, a structure that contains all your code, but in a format that is easier to manipulate than the human-friendly syntax normally used. 
Stage 2 is when that parsed code is executed. 
With Julia's metaprogramming facilities, you can access the code after it's been parsed but before it's evaluated.
This lets you do things that you can't normally do. For example, you can convert simple expressions to more complicated expressions, or examine code before it runs and change it so that it runs faster.

An example of metaprogramming in Julia is the @time macro. Macros are small code generators. You set up some code in them to be placed into a stream of computation.

```
julia> function f(n)
           s = 0
           for i = 1:n
               s += i/2
           end
           s
       end

julia> @time f(1)
  0.012686 seconds (2.09 k allocations: 103.421 KiB)
0.5
```
The @time macro executes an expression, and returns the value of the expression, time elapsed, and the total bytes allocated.
It inserts a "start the stopwatch" command at the beginning of the code, before passing the expression on to be executed. When the code has finished running, a "finish the stopwatch" command is added, followed by the calculations to report the elapsed time and memory usage. 
In the example above the @time macro is the metavaraible that helps us talk about the function, which is the object varaible

**That's all for this week! Stay tuned for next week's blog post!**
