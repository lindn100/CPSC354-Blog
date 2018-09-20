# Diving Into Some Math
Hi there! This week, our main topic in class was Abstract Reduction Systems, which is generally a set A together with a relation. These sets are very interesting and important to us because these relations help us to understand models of computations when dealing with data sets.

Because a large part of this concept is theoretical in math (discrete math-like), I decided to program a mathematical function in Julia. To put a fun twist on this, I decided to program the Fibonacci numbers recursively!

```
function Fibonacci(n)
  if(n == 0)
    return 0
  elseif(n == 1)
    return 1
  else
    return Fibonacci(n-2) + Fibonacci(n-1)
  end
end

println(Fibonacci(6))
```

The Fibonacci Series is a famous series of numbers in which each number is the sum of the two preceding numbers. The first two numbers in the series are 1, and following the logic, the third number would be 2 (1 + 1 = 2).

Fibonacci Series: 1 1 2 3 5 8 13 21 34 ...

The above piece of Julia code will output the Fibonacci number in the given index (n). In the example, n = 6, so the sixth Fibonacci figure will be called. The output is 8, which is correct!

The recursive calls to itself are made possible by the stack. Mathematically, the Fibonacci sequence is closely connected with the golden ratio. The golden ratio is a relationship where the ratio is the same as the ratio of their sum to the larger of the two quantities. More specifically, when a > b > 0: (a+b)/a = a/b

If you continue calculating the successive Fibonacci numbers, eventually you will form a golden ratio in that (a + b) / a = a/b.

**I believe this is enough math for me for the time being. I acknowledge that my explanations were not crystal clear, as I am not a genius in mathematics. However, I gave my best attempt at relating the mathematics in class to a piece of code which may have real life applications.**
