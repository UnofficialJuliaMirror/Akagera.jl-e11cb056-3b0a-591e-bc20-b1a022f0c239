# [Tutorial](@id manual-tutorial)

## Introduction

**Akagera.jl** is cursor animator for Julia. You should use cursor animation when
you running the not short-running, but also not long-running process(i.e, web scraping, data preprocessing, plotting and so on...). If your program is expected to take several hours, I recommend using [ProgressMeter.jl](https://github.com/timholy/ProgressMeter.jl) instead.

## Usage
```julia
using Akagera
animator = Animator(dots)
set_msg!(animator, "Hello, world!")

start!(animator)
# some process here...
finish!(animator)
```
[`Animator`](@ref) does all about animation control.
Many animations are already implemented (Thanks to [cli-spinners](https://github.com/sindresorhus/cli-spinners)).

!!! note  
    Animation runs forever until [`finish!`](@ref) is called. That means,
    in REPL there is no way but `Ctrl-D` to stop the animation.
