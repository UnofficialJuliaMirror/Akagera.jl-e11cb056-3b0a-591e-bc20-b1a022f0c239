using Akagera
using Base.Test

@testset "Animator tests" begin
    @testset "Animator(interval::Int, frames::Vector{String}, animate_type::String)" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        @test try
            Animator(interval, frames, animate_type) 
            true
        catch
            false
        end

        a = Animator(interval, frames, animate_type)

        @test a.flag == false
        @test a.interval == interval
        @test_throws UndefRefError a.msg
        @test a.frames == frames
        @test a.animate_type == animate_type
    end

    @testset "Animator(json::String; animate_type)" begin
        json = """
        {
            "interval": 2018,
            "frames": ["T", "e", "s", "t", "!"]
        }
        """

        @test try
            Animator(json, animate_type="linear")
            true
        catch
            false
        end

        a = Animator(json, animate_type="linear")

        @test a.frames == ["T", "e", "s", "t", "!"]
        @test a.interval == 2018

        @test_warn "animate_type is not specified. Default value `linear` will be set." Animator(json)
    
        json_without_interval = """
        {
            "frames": ["T", "e", "s", "t", "!"] 
        }
        """

        @test_throws ArgumentError Animator(json_without_interval, animate_type="linear")

        json_without_frames = """
        {
            "interval": 2018
        }
        """

        @test_throws ArgumentError Animator(json_without_frames, animate_type="linear")
    end

    @testset "Animator(fc::AnimeContainer)" begin
        fc = arrow3
        
        @test try
            Animator(fc)
            true
        catch
            false
        end

        a = Animator(fc)

        @test a.flag == false
        @test a.interval == fc.interval
        @test_throws UndefRefError a.msg
        @test a.frames == fc.frames
        @test a.animate_type == fc.animate_type
    end

    @testset "init!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"
    
        a = Animator(interval, frames, animate_type)

        @test a.flag == false

        @test try
            init!(a)
            true
        catch
            false
        end

        @test a.flag == true
    end

    @testset "set_msg!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        @test_throws UndefRefError a.msg

        @test try
            set_msg!(a, "TestMsg")
            true
        catch
            false
        end

        @test a.msg == "TestMsg"
    end

    @testset "start!()" begin
        @testset "render()" begin
            interval = 1
            frames = ["T", "e", "s", "t", "!"]
            animate_type = "Test"
    
            a = Animator(interval, frames, animate_type)

            set_msg!(a, "TestMsg")

            @test a.frames[1] * " " * a.msg == "T TestMsg"
        end

        a = Animator(dots)

        @test try
            start!(a)
            finish!(a)

            true
        catch
            false
        end

        linear = map(x->x, [1:5;])
        @test linear == [1, 2, 3, 4, 5]

        swing = map(x->
            begin
                if x <= 5
                    x
                else
                    10-x
                end
            end, [1:8;]
        )

        @test swing == [1, 2, 3, 4, 5, 4, 3, 2]
    end

    @testset "update_msg!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        set_msg!(a, "TestMsg")

        @test a.msg == "TestMsg"

        @test try
            update_msg!(a, "TestUpdatingMsg")
            true
        catch
            false
        end

        @test a.msg == "TestUpdatingMsg"
    end

    @testset "finish!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        init!(a)

        @test a.flag == true

        @test try
            finish!(a)
            true
        catch
            false
        end

        @test a.flag == false
    end
end
