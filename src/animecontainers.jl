abstract type AbstractAnimeContainer
end

mutable struct AnimeContainer <: AbstractAnimeContainer
    interval::Int
    frames::Vector{String}
    animate_type::String
end