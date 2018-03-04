using Documenter, Akagera

makedocs(
    modules = [Akagera],
    clean = false,
    format = :html,
    sitename = "Akagera.jl",
    authors = "Colaholic",
    pages = [
        "Home" => "index.md",
        "Manual" => "manual/tutorial.md",
        "Library" => [
            "lib/animator.md",
            "lib/animecontainer.md"
        ]
    ],
    html_canonical = "https://lcolaholicl.github.io/Akagera.j/stable"
)

deploydocs(
    repo = "github.com/lcolaholicl/Akagera.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
