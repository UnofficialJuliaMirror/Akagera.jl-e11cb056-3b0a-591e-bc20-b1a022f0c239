using Documenter, Akagera

const PAGES = [
    "Home" => "index.md",
    "Library" => "lib/animator.md"
]

makedocs(
    modules = [Akagera],
    authors = "Colaholic",
    pages = PAGES
)