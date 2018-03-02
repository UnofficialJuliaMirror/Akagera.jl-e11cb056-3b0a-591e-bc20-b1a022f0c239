module Akagera

abstract type AbstractAnimator 
end

mutable struct Animator <: AbstractAnimator
    flag::Bool
    interval_ms::Int
    msg::String
    glyphs::Vector{Char}
    animate_type::String

    function Animator(interval_ms::Int)
        self = new()
        self.flag = false
        self.interval_ms = interval_ms

        return self
    end
end

function init!(a::AbstractAnimator, glyphs::Vector{Char}, animate_type::String)
    a.flag = true
    a.glyphs = glyphs
    a.animate_type = animate_type 
end

function set_msg!(a::AbstractAnimator, msg::String)
    a.msg = msg
end

function start!(a::AbstractAnimator)

    function render(i::Int)
        println(string(a.glyphs[i]) * " " * a.msg)
        sleep(a.interval_ms/1000)
    end

    @schedule while a.flag
        if a.animate_type == "直進型"
            for i = 1:length(a.glyphs) 
                # render i th element
                render(i)
            end
        elseif a.animate_type == "往復型"
            for i = 1:2*length(a.glyphs) - 2
                # render ( i<=length(a.glyphs) ? i : (2*length(a.glyphs) - i) ) th element
                render(
                    begin
                        if i <= length(a.glyphs)
                            i
                        else
                            2*length(a.glyphs) - i
                        end
                    end)
            end
        end
    end
end

function update_msg!(a::AbstractAnimator, new_msg::String)
    set_msg!(a, new_msg)
end

function finish!(a::AbstractAnimator)
    a.flag = false
end

end # module
