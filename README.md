# **Akagera** [![Build Status](https://travis-ci.org/lcolaholicl/Akagera.jl.svg?branch=master)](https://travis-ci.org/lcolaholicl/Akagera.jl)[![codecov.io](http://codecov.io/github/lcolaholicl/Akagera.jl/coverage.svg?branch=master)](http://codecov.io/github/lcolaholicl/Akagera.jl?branch=master)

> Akagera is a cursor animator for Julia 😎  
> Provided animators are from [cli-spinners](https://github.com/sindresorhus/cli-spinners)

[![asciicast](https://asciinema.org/a/nltcx6DsidnBIvLXRnnfYhWkC.png)](https://asciinema.org/a/nltcx6DsidnBIvLXRnnfYhWkC)

# Install
```julia
Pkg.add("https://github.com/lcolaholicl/Akagera.jl")
```
🐕 < Wow, such easy

# Usage
```julia
using Akagera

a = Animator(:arrow3)
init!(a)
set_msg!(a, "Making Julia great...")

start!(a)
# Heavy computation here...
end!(a)
```

# 🚧 Document
[Available here](https://lcolaholicl.github.io/Akagera.jl/stable/)
