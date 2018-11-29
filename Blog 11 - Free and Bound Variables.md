# Free and Bound Variables
In class this week, we discussed variables and as part of the discussion we talked about free and bound variables.

Variables are central to programming languages. Variables can be divided into two groups: free and bound.

The free variables in a statement stand for objects that the statement says something about...The fact that you can plug in different values for a free variable means that it is free to stand for anything.

Bound variables, on the other hand, are simply letters that are used as a convenience to help express an idea and should not be thought of as standing for any particular object. A bound variable can always be replaced by a new variable without changing the meaning of the statement.

A good way to determine whether you are looking at a free or bound variable is to see if your variable has a limitation imposed on it or not. If it does, it's a bound variable. Another way is to check whether or not your expression changes if you swap out the variable for another. If it doesn't then you have an example of a bound variable. If the function depends on the variable, then you have a free variable.

Let's look at an example in Julia:
```
julia> f(x) = x * 2
```

In this expression, x is bound because if we change every occurrence of x by z (a fresh variable) for example, we get:
```
julia> f(z) = z * 2
```
Which is essentially the same function (the meaning is not changed).

On the other hand, consider:
```
julia> f(x) = x * y
```
Here, x is still bound, but y is free because if we change y to, say, z, we get an expression with a different meaning.

**That's all for this week! Stay tuned for next week's blog post!**
