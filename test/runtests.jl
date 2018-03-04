using Akagera: Animator, init!, set_msg!, start!, update_msg!, finish!
using Base.Test

@testset "Animator tests" begin
    @testset "Animator()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        @test a.flag == false
        @test a.interval == interval
        @test_throws UndefRefError a.msg
        @test a.frames == frames
        @test a.animate_type == animate_type
    end

    @testset "init!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"
    
        a = Animator(interval, frames, animate_type)

        @test a.flag == false

        init!(a)

        @test a.flag == true
    end

    @testset "set_msg!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        @test_throws UndefRefError a.msg

        set_msg!(a, "TestMsg")

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

        update_msg!(a, "TestUpdatingMsg")

        @test a.msg == "TestUpdatingMsg"
    end

    @testset "finish!()" begin
        interval = 1
        frames = ["T", "e", "s", "t", "!"]
        animate_type = "Test"

        a = Animator(interval, frames, animate_type)

        init!(a)

        @test a.flag == true

        finish!(a)

        @test a.flag == false
    end
end
