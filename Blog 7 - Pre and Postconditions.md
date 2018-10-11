# Preconditions, Postconditions, and Invariants
In class this week, we discussed pre and postconditions. They are a method of specifying what a function accomplishes.
The precondition statement indicates what must be true before the function is called and the postcondition statement indicates what will be true when the function finishes its work.
Preconditions and postconditions are enforced integrity checks on specified input and output values.

For example, if a function requires three arguments: n has to be an integer; len should be a positive number; and angle has to be a number, which is understood to be in degrees.
These requirements are called preconditions because they are supposed to be true before the function starts executing. Conditions at the end of the function are postconditions. Postconditions include the intended effect of the function (like drawing line) and any side effects.

With the notion of pre and postconditions comes the notion of invariants. 
Invariants are the things that are always true and won't change.

Invariants, preconditions, and postconditions represent how we expect our program to work. They're all part of an idea called "programming by contract". It was invented by C.A.R. Hoare. Bertrand Meyer built an object oriented language called Eiffel around it.

An example of an invariant is a loop invariant. It is hard to keep track of what is happening with loops. Loops which don't terminate or terminate without achieving their goal is a common problem in computer programming. Loop invariants help. A loop invariant is a condition that is true at the beginning and end of every execution of a loop (maintaining the invariant).
The loop invariant should be created so that when the condition of termination is attained, and the invariant is true, then the goal is reached.

A general pattern for loop invariants is:
```
Loop invariant must be true here
   while (TEST CONDITION) {
      ...
      ...
      ...
      the loop invariant must be true here
   }
Termination + Loop invariant = Goal
```

We will demonstrate a loop invariant with a simple code example in Julia:
```
julia> while x <= 5
           x = x + 1
       end
```

Here the loop invariant would be that x <= 6. Obviously, in real world examples, loop invariants are going to be more complicated.
Invariants help us reason about how loops behave. It's also useful when debugging your code. If you identify an important invariant, it's easy to check that it holds even when you modify some code. 
The basic idea is that we want a systematic way to prove properties of our code. The way we approach this is by looking at preconditions and postconditions in the code. That is, we want to prove that if some condition A holds before we run our code, some condition B holds after we run it.

**Next week we'll continue to tackle exercises provided by Prof. Kurz, reviewing topics we cover in class, and hopefully start to gain some progress on our software. Thanks for reading!**
