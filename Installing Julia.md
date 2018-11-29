To install Julia on your computer, visit http://julialang.org/downloads/ and follow instructions. 

**On a Mac**, you download the Julia .dmg file, double-click to open it, and drag the icon to the Applications folder.
To run Julia, you can double-click the icon of the Julia package in the /Applications folder. This opens the terminal application, and starts a new window. This is the REPL (read-eval-print loop), it's the easiest way to run Julia (by using this interactive session).

If you have a file containing Julia code, you can run it from the command-line: 
```
$ julia hello-world.jl
```

or from within the Julia REPL: 
```
$ julia
julia> include("hello-world.jl")
```
