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
    "text": "Tutorial"
},

{
    "location": "index.html#Library-1",
    "page": "Home",
    "title": "Library",
    "category": "section",
    "text": "Animator\nAnimeContainer"
},

{
    "location": "manual/tutorial.html#",
    "page": "Manual",
    "title": "Manual",
    "category": "page",
    "text": ""
},

{
    "location": "manual/tutorial.html#manual-tutorial-1",
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
    "location": "lib/animator.html#",
    "page": "Animator",
    "title": "Animator",
    "category": "page",
    "text": ""
},

{
    "location": "lib/animator.html#lib-animator-1",
    "page": "Animator",
    "title": "Animator",
    "category": "section",
    "text": ""
},

{
    "location": "lib/animator.html#Akagera.Animator",
    "page": "Animator",
    "title": "Akagera.Animator",
    "category": "type",
    "text": "   Animator(interval::Int, frames::Vector{String}, animate_type::String)\n   Animator(json::String; animate_type=\"\")\n   Animator(fc::AnimeContainer)\n\nConstruct an Animator with animation loaded from given arguments.\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Constructors-and-Types-1",
    "page": "Animator",
    "title": "Constructors and Types",
    "category": "section",
    "text": "Animator"
},

{
    "location": "lib/animator.html#Akagera.init!",
    "page": "Animator",
    "title": "Akagera.init!",
    "category": "function",
    "text": "init!(a::Animator)\n\nSet a.flag = true to be ready to start the animation. This should not be called manually.\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Akagera.set_msg!",
    "page": "Animator",
    "title": "Akagera.set_msg!",
    "category": "function",
    "text": "set_msg!(a::Animator, msg::String)\n\nSet msg field of Animator.\n\njulia> a = Animator(arrow3)\njulia> set_msg!(a, \"Hello, world!!!\")\njulia> a.msg\nHello, world!!!\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Akagera.start!",
    "page": "Animator",
    "title": "Akagera.start!",
    "category": "function",
    "text": "start!(a::Animator)\n\nStart the animation.\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Akagera.update_msg!",
    "page": "Animator",
    "title": "Akagera.update_msg!",
    "category": "function",
    "text": "update_msg!(a::Animator, new_msg::String)\n\nChange msg field of Animator. This works even while animation is activated.\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Akagera.finish!",
    "page": "Animator",
    "title": "Akagera.finish!",
    "category": "function",
    "text": "finish!(a::Animator)\n\nFinish the animation.\n\n\n\n\n\n"
},

{
    "location": "lib/animator.html#Functions-1",
    "page": "Animator",
    "title": "Functions",
    "category": "section",
    "text": "init!\nset_msg!\nstart!\nupdate_msg!\nfinish!"
},

{
    "location": "lib/animecontainer.html#",
    "page": "AnimeContainer",
    "title": "AnimeContainer",
    "category": "page",
    "text": ""
},

{
    "location": "lib/animecontainer.html#lib-animecontainer-1",
    "page": "AnimeContainer",
    "title": "AnimeContainer",
    "category": "section",
    "text": ""
},

]}
