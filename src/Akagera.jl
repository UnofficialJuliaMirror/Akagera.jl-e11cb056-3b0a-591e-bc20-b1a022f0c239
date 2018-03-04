module Akagera

using JSON

include("animecontainers.jl")

# I need exportall
export Animator, 
       init!,
       set_msg!,
       start!,
       update_msg!,
       finish!,

       AnimeContainer,
       dots,
       dots2,
       dots3,
       dots4,
       dots5,
       dots6,
       dots7,
       dots8,
       dots9,
       dots10,
       dots11,
       dots12,
       line,
       line2,
       pipe,
       simpleDots,
       simpleDotsScrolling,
       star,
       star2,
       flip,
       hamburger,
       growVertical,
       growHorizontal,
       balloon,
       balloon2,
       noise,
       bounce,
       boxBounce,
       boxBounce2,
       triangle,
       arc,
       circle,
       squareCorners,
       circleQuarters,
       circleHalves,
       squish,
       toggle,
       toggle2,
       toggle3,
       toggle4,
       toggle5,
       toggle6,
       toggle7,
       toggle8,
       toggle9,
       toggle10,
       toggle11,
       toggle12,
       toggle13,
       arrow,
       arrow2,
       arrow3,
       bouncingBar,
       bouncingBall,
       smiley,
       monkey,
       hearts,
       clock,
       earth,
       moon,
       runner,
       pong,
       shark,
       dqpb,
       weather,
       christmas

"""
       Animator(interval::Int, frames::Vector{String}, animate_type::String)
       Animator(json::String; animate_type="")
       Animator(fc::AnimeContainer)

Construct an `Animator` with animation loaded from given arguments.
"""
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

"""
    init!(a::Animator)

Set `a.flag = true` to be ready to start the animation. This should not be called manually.
"""
function init!(a::Animator)
    a.flag = true
end

"""
    set_msg!(a::Animator, msg::String)

Set `msg` field of `Animator`.

```julia-repl
julia> a = Animator(arrow3)
julia> set_msg!(a, "Hello, world!!!")
julia> a.msg
Hello, world!!!
```
"""
function set_msg!(a::Animator, msg::String)
    a.msg = msg
end

"""
    start!(a::Animator)

Start the animation.
"""
function start!(a::Animator; io=STDERR)
    init!(a)
    is_first = true

    function render(i::Int)
        if !is_first
            print(io, "\r\033[K")
        else
            println(io, " ") # Put empty line not to hurt old prints
            is_first = false
        end
        print(io, a.frames[i] * " " * a.msg)
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

"""
    update_msg!(a::Animator, new_msg::String)

Change `msg` field of `Animator`. This works even while animation is activated.
"""
function update_msg!(a::Animator, new_msg::String)
    set_msg!(a, new_msg)
end

"""
    finish!(a::Animator)

Finish the animation.
"""
function finish!(a::Animator)
    a.flag = false
end

end # module
