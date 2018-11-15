# Lamda Calculus
For our final week before Thanksgiving break, we began our dicussion on Lamda Calculus - a topic that we have been building up to for a long time. There's no way I will be able to cover all of Lamda Calculus in one blog, but I will start with the basics.

Let's start with the syntax of λ-calculus. Assume as given a countably infinite set of variables Var, the elements of which we denote by x, y, z, etc.

exp ::= x | λx.exp | exp exp

The first operation is called abstraction and takes two arguments: a variable x and an expression 'exp'. This operation creates a function with input x from expression exp.

The second operation is called application and takes two expressions and forms a new expression. This operation applies the function of the first expression to the argument (expression 2).

Now, let's move to the semantics of λ-calculus. There are two essential equations here: the beta and alpha rules.

Consider two expressions M and N:

(λx.M)N ≈<sub>β</sub> M[x->N]

In this rewrite rule, all occurrences of x are substituted by N after renaming the bound variables in M such that they are disjoint from all free varaibles occurring in N. Make sure the free variables do not have any similar naming conventions between the two expression and then replace x by N.

Next, the alpha equation is used when the x in λx.M is a bound variable, and thus need to perform capture avoiding substituion. Consier y as a fresh element for M:

λx.M ≈<sub>α</sub> λy.M [x->y]

Let's look at an example using these two rules.

Consider the function f(x) = x<sup>2</sup> + 2x +1

This function can be rewritten as λx.x<sup>2</sup> + 2x +1.

Now, let's use the alpha equation.

λx.x<sup>2</sup> + 2x + 1 ≈<sub>α</sub> λy.y<sup>2</sup> + 2y + 1

Therefore, the alpha equation is telling us that f(x) = x<sup>2</sup> + 2x + 1 is the same as f(y) = y<sup>2</sup> + 2y + 1

Next is the beta equation.

Suppose we want to find f(10) of the given function. This can be written as f(10) = 10<sup>2</sup> + 2(10) + 1, or as (λx.x<sup>2</sup> + 2x + 1)10.

Now, let's apply the Beta equation to it.

(λx.x<sup>2</sup> + 2x + 1)10 = 10<sup>2</sup> + 2(10) + 1.

Finally, I'd like to end with a discussion on booleans which I particularly liked. There are other topics in λ-calculus that I am skippping over ([such as recursion or the fixed point combinator](https://hackmd.io/s/Byn8oFPTQ)), but I found booleans to just click with me.

In many cases, we want a typed variable such as a boolean in our programming languages. Booleans are useful in our ability to make different choices within a program, such as when to exit or not. In an if statement, for exmaple, evaluating on whether to enter or not is dependent on the argument, which ought to be a boolean, as a boolean's True/False or Yes/No nature creates a natural flow of control. If we tried to do soemthing like this without a boolean, it would be needlessly complicated.
Thus, we can expand our syntax of lamda calculus to be:

exp ::= x | λx.exp | exp exp | fix<sub>exp</sub> | if bool then exp else exp | bool

In this scenario, we define a type bool to have the syntax of:

bool ::= true | false | bool & bool | bool || bool | !bool

We can give meaning to the syntax of this bool type by giving an equivalence relation, or defining the truth tables (which I'm not going to do here). 
What I liked so much about this is that we are taking our understanding of λ-calculus and morphing some of what we need pragmatically into it. We as programmers would be greatly benefitted with the use of boolean logic in our programs, so we ought to incorporate them into this if possible. I feel like this opens up the exploration for many other types and their roles in λ-calculus.


## Instructions on how to run Julia on your machine

As the semester is rapidly approaching its end, we ought to give you some instructions with how to download Julia so that you can run our PET program.

1. Navigate [here](https://julialang.org/downloads/) and download the version of Julia appropriate to your machine. 
2. After you have downloaded Julia, we highly, highly recommend that you add it's bin to your PATH, as you can then use the 'julia' command in any terminal you wish. For example, I prefer to use Git Bash and then use the 'julia PET.jl' command to execute our program.
3. If you are feeling adventerous, you can use the Julia Terminal included in the download. You can make use the cd("myDir"), homedir(), pwd(), and other various commands. For more refrence refer [here](https://en.wikibooks.org/wiki/Introducing_Julia/Getting_started).

**That's all for this week. Hopefully you can start setting up to run our PET program soon, which is currently in the works!**
