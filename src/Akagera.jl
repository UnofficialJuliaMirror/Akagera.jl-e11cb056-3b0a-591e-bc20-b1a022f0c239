module Akagera

abstract type AbstractAnimator 
end

mutable struct Animator <: AbstractAnimator
    flag::Bool
    interval_ms::Int
    msg::String
    frames::Vector{String}
    animate_type::String

    function Animator(interval_ms::Int)
        self = new()
        self.flag = false
        self.interval_ms = interval_ms

        return self
    end
end

function init!(a::AbstractAnimator, frames::Vector{String}, animate_type::String)
    a.flag = true
    a.frames = frames
    a.animate_type = animate_type 
end

function set_msg!(a::AbstractAnimator, msg::String)
    a.msg = msg
end

function start!(a::AbstractAnimator)

    function render(i::Int)
        println(a.frames[i] * " " * a.msg)
        sleep(a.interval_ms/1000)
    end

    @schedule while a.flag
        if a.animate_type == "linear"
            for i = 1:length(a.frames) 
                # render i th element
                render(i)
            end
        elseif a.animate_type == "swing"
            for i = 1:2*length(a.frames) - 2
                # render ( i<=length(a.frames) ? i : (2*length(a.frames) - i) ) th element
                render(
                    begin
                        if i <= length(a.frames)
                            i
                        else
                            2*length(a.frames) - i
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
