# Pi in Julia
The Julia language is great for math and computations. It can be faster than c to perform certain tasks while using a simple syntax similar to Python.

High precision floating numbers are a powerful tool in Julia. When it comes to numerical computing you must be able to have as much precession as you want.

An interesting example of that is the number π in Julia. In Julia, π is stored as a special irrational value represented by the type Irrational{:π} therefore when you print π to the console it does not print as like an ordinary floating point number (it's not rounded to float64):
```
π = 3.1415926535897...
```
The irrational type value acts like ordinary numeric values, except that it can be converted automatically to any floating point type without any intermediate rounding.
π can be evaluated to full precision (rather than be truncated to Float64 and converted back) by using it’s BigFloat representation:
```
BigFloat(π) = 3.141592653589793238462643383279502884197169399375105820974944592307816406286198
```

The default precision for BigFloat is 256 bits. BigFloat(1) + pi returns 4.141592653589793238462643383279502884197169399375105820974944592307816406286198 whereas if pi was stored as a float64 we would get BigFloat(1) + Float64(pi) = 4.141592653589793115997963468544185161590576171875000000000000000000000000000000

Using setprecision, BigFloat will compute π to the precision you is set:
```
setprecision(BigFloat, 1024) do
    BigFloat(pi)
end
```

**That's all for this week's blog entry. Thanks for reading!**
