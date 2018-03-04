module Akagera

using JSON

include("animecontainers.jl")

mutable struct Animator
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

    function Animator(json::String; animate_type="") # JSON
        json_dict = JSON.parse(json)

        self = new()
        self.flag = false
        self.interval = begin
            if haskey(json_dict, "interval")
                json_dict["interval"]
            else
                throw(ArgumentError("interval is not specified. You should set interval in json."))
            end
        end

        self.frames = begin
            if haskey(json_dict, "frames")
                json_dict["frames"]
            else
                throw(ArgumentError("frames is not specified. You should set frames in json."))
            end
        end

        self.animate_type = begin
            if animate_type != ""
                animate_type
            else
                warn("animate_type is not specified. Default value `linear` will be set.")
                "linear"
            end
        end

        return self
    end

    function Animator(fc::AnimeContainer)
        self = new()
        self.flag = false

        self.interval = fc.interval
        self.frames = fc.frames
        self.animate_type = fc.animate_type

        return self
    end
end

function init!(a::Animator)
    a.flag = true
end

function set_msg!(a::Animator, msg::String)
    a.msg = msg
end

function start!(a::Animator)
    is_first = true

    function render(i::Int)
        if !is_first
            print("\r\033[K")
        else
            println(" ") # Put empty line not to hurt old prints
            is_first = false
        end
        print(a.frames[i] * " " * a.msg)
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

function update_msg!(a::Animator, new_msg::String)
    set_msg!(a, new_msg)
end

function finish!(a::Animator)
    a.flag = false
end

end # module
