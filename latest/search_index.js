var documenterSearchIndex = {"docs": [

{
    "location": "index.html#",
    "page": "Home",
    "title": "Home",
    "category": "page",
    "text": ""
},

{
    "location": "index.html#Akagera.jl-Documentation-1",
    "page": "Home",
    "title": "Akagera.jl Documentation",
    "category": "section",
    "text": ""
},

{
    "location": "index.html#Manual-1",
    "page": "Home",
    "title": "Manual",
    "category": "section",
    "text": "Pages = [\n    \"manual/tutorial.md\"\n]\nDepth = 1"
},

{
    "location": "index.html#Library-1",
    "page": "Home",
    "title": "Library",
    "category": "section",
    "text": "Pages = [\n    \"lib/lib.md\"\n]\nDepth = 1"
},

{
    "location": "manual/tutorial.html#",
    "page": "Manual",
    "title": "Manual",
    "category": "page",
    "text": ""
},

{
    "location": "manual/tutorial.html#Tutorial-1",
    "page": "Manual",
    "title": "Tutorial",
    "category": "section",
    "text": ""
},

{
    "location": "manual/tutorial.html#Introduction-1",
    "page": "Manual",
    "title": "Introduction",
    "category": "section",
    "text": "Akagera.jl is cursor animator for Julia. You should use cursor animation when you running the not short-running, but also not long-running process(i.e, web scraping, data preprocessing, plotting and so on...). If your program is expected to take several hours, I recommend using ProgressMeter.jl instead."
},

{
    "location": "manual/tutorial.html#Usage-1",
    "page": "Manual",
    "title": "Usage",
    "category": "section",
    "text": "using Akagera\nanimator = Animator(dots)\nset_msg!(animator, \"Hello, world!\")\n\nstart!(animator)\n# some process here...\nfinish!(animator)Animator does all about animation control. Many animations are already implemented (Thanks to cli-spinners).note: Note\nAnimation runs forever until finish! is called. That means, in REPL there is no way but Ctrl-D to stop the animation."
},

{
    "location": "lib/lib.html#",
    "page": "Library",
    "title": "Library",
    "category": "page",
    "text": ""
},

{
    "location": "lib/lib.html#Library-documentation-1",
    "page": "Library",
    "title": "Library documentation",
    "category": "section",
    "text": "Documentation for Akagera.jl\'s library."
},

{
    "location": "lib/lib.html#Index-1",
    "page": "Library",
    "title": "Index",
    "category": "section",
    "text": "Pages = [\"lib.md\"]"
},

{
    "location": "lib/lib.html#Akagera.Animator",
    "page": "Library",
    "title": "Akagera.Animator",
    "category": "type",
    "text": "   Animator(interval::Int, frames::Vector{String}, animate_type::String)\n   Animator(json::String; animate_type=\"\")\n   Animator(fc::AnimeContainer)\n\nConstruct an Animator with animation loaded from given arguments.\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Akagera.init!",
    "page": "Library",
    "title": "Akagera.init!",
    "category": "function",
    "text": "init!(a::Animator)\n\nSet a.flag = true to be ready to start the animation. This should not be called manually.\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Akagera.set_msg!",
    "page": "Library",
    "title": "Akagera.set_msg!",
    "category": "function",
    "text": "set_msg!(a::Animator, msg::String)\n\nSet msg field of Animator.\n\njulia> a = Animator(arrow3)\njulia> set_msg!(a, \"Hello, world!!!\")\njulia> a.msg\nHello, world!!!\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Akagera.start!",
    "page": "Library",
    "title": "Akagera.start!",
    "category": "function",
    "text": "start!(a::Animator)\n\nStart the animation.\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Akagera.update_msg!",
    "page": "Library",
    "title": "Akagera.update_msg!",
    "category": "function",
    "text": "update_msg!(a::Animator, new_msg::String)\n\nChange msg field of Animator. This works even while animation is activated.\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Akagera.finish!",
    "page": "Library",
    "title": "Akagera.finish!",
    "category": "function",
    "text": "finish!(a::Animator)\n\nFinish the animation.\n\n\n\n\n\n"
},

{
    "location": "lib/lib.html#Library-1",
    "page": "Library",
    "title": "Library",
    "category": "section",
    "text": "Animator\ninit!\nset_msg!\nstart!\nupdate_msg!\nfinish!"
},

]}
