module Akagera

using JSON

abstract type AbstractAnimator 
end

mutable struct Animator <: AbstractAnimator
    flag::Bool
    interval::Int
    msg::String
    frames::Vector{String}
    animate_type::String

    function Animator(interval::Int, frames::Vector{String}, animate_type::String)
        self = new()
        self.flag = false
        self.interval = interval
        self.frames = frames
        self.animate_type = animate_type
        
        return self
    end

    function Animator(json::String; kwargs...) # JSON
        json_dict = JSON.parse(json)
        kwargs_dict = Dict(kwargs)
        

        self = new()
        self.flag = false
        self.interval = begin
            if haskey(json_dict, "interval")
                return json_dict["interval"]
            elseif haskey(kwargs_dict, "interval")
                return kwargs_dict["interval"]
            else
                throw(ArgumentError("interval is not specified. You should set interval in kwargs or json."))
            end
        end

        self.frames = begin
            if haskey(json_dict, "frames")
                return json_dict["frames"]
            else
                throw(ArgumentError("frames is not specified. You should set frames in json."))
            end
        end

        self.animate_type = begin
            if haskey(kwargs_dict, "animate_type")
                return kwargs_dict["animate_type"]
            else
                warn("animate_type is not specified. Default value `linear` will be set.")
                return "linear"
            end
        end
    end
end

function init!(a::AbstractAnimator)
    a.flag = true
end

function set_msg!(a::AbstractAnimator, msg::String)
    a.msg = msg
end

function start!(a::AbstractAnimator)

    function render(i::Int)
        println(a.frames[i] * " " * a.msg)
        sleep(a.interval/1000)
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
