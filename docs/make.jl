using Documenter, Akagera

const PAGES = [
    "Home" => "index.md",
    "Manual" => "manual/tutorial.md",
    "Library" => "lib/animator.md"
]

makedocs(
    modules = [Akagera],
    authors = "Colaholic",
    pages = PAGES
)

deploydocs(
    deps = Deps.pip("mkdocs"),
    repo = "github.com/lcolaholicl/Akagera.jl.git",
    julia = "0.6",
    osname = "linux"
)
