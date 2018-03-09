# **Akagera**

> Akagera is a cursor animator for Julia 😎  
> Provided animators are from [cli-spinners](https://github.com/sindresorhus/cli-spinners)

| **Documentation** | **Build Status** |
|:------------------|:-----------------|
|[![][docs-stable-img]][docs-stable-url][![][docs-latest-img]][docs-latest-url]| [![][travis-img]][travis-url] [![][codecov-img]][codecov-url] |

[![asciicast](https://asciinema.org/a/nltcx6DsidnBIvLXRnnfYhWkC.png)](https://asciinema.org/a/nltcx6DsidnBIvLXRnnfYhWkC)

# Install
on the Julia REPL, type:
```julia
> Pkg.add("Akagera")
```
🐕 < Wow, such easy

# Usage
```julia
using Akagera

a = Animator(arrow3)
set_msg!(a, "Making Julia great...")

start!(a)
# Heavy computation here...
finish!(a)
```

[docs-latest-img]: https://img.shields.io/badge/docs-latest-blue.svg
[docs-latest-url]: https://lcolaholicl.github.io/Akagera.jl/latest

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://lcolaholicl.github.io/Akagera.jl/stable

[travis-img]: https://travis-ci.org/lcolaholicl/Akagera.jl.svg?branch=master
[travis-url]: https://travis-ci.org/lcolaholicl/Akagera.jl?branch=master

[codecov-img]: https://codecov.io/gh/lcolaholicl/Akagera.jl/branch/master/graphs/badge.svg?branch=master
[codecov-url]: http://codecov.io/github/lcolaholicl/Akagera.jl?branch=master
