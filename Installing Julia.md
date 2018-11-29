To install Julia on your computer, visit http://julialang.org/downloads/ and follow instructions. 

**On a Mac**, you download the Julia .dmg file, double-click to open it, and drag the icon to the Applications folder.
To run Julia, you can double-click the icon of the Julia package in the /Applications folder. This opens the terminal application, and starts a new window. This is the REPL (read-eval-print loop), it's the easiest way to run Julia (by using this interactive session).

**On a PC**, download the Julia Self-Extracting Archive (.exe) 32-bit or 64-bit. Run the downloaded program to extract julia. Double-click the julia shortcut in the unpacked folder to start julia. We recommend you to add the bin folder to your Path so that you can use the Julia command in any command-line environment.

If you have a file containing Julia code, you can run it from the command-line: 
```
$ julia hello-world.jl
```

or from within the Julia REPL: 
```
$ julia
julia> include("hello-world.jl")
```
