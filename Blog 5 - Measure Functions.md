# Measure Functions
For this week's blog, I will choose to cover an exercise on Algorithms. Specifically, I am going to take a simple algorithm and create a rewrite system with it. From there, I will create a measure function which allows us to determine termination.

Consider the function to find the greatest common divisor:

```
function gcd(x, y)
  if(x==y)
    return x
  end
  if(x > y)
    return gcd(x-y, y)
  else
    return gcd(x, y-x)
  end
end
```

The above recursive function will take two integers and return their greatest common divisor. Now, let's create a rewrite system for it:

> gcd(0,y) -> 0
> gcd(x,0) -> 0
> gcd (x,y) -> {1. if x>y, then compute gcd(x-y, y) 2. if x<y, then compute gcd(x, y-x) 3. If x=y, then return x}

The above rules serve as a valid rewrite system because it has base cases, recursively calls itself to get smaller until the two numbers equal, and then return the output.

**Also, the rewrite system is terminating because we can create a measure function and observe that it does decrease**

Suppose the measure function takes two ints and converts it into a single int by addition. N x N --> N

For example: gcd(8,12) would have a measure function of 20 (8+12). Once gcd is called, it would then call for gcd(8,4). The measure function value for that call would be 12, which is indeed smaller after a reduction step. Finally, we would compute gcd(4,4), which has a measure function of 8, again being smaller by a reduction. The gcd function would finally output 4, as 4=4.

Thus, we have shown a recursive function for the greatest common divisor. We then showed the steps for a reduction system and created a measure function to prove that it terminates.

**That's all for this week folks. Next week I will continue to tackle exercises provided by Prof. Kurz. When I finish those up, I will start on my software. Thanks for reading!**
