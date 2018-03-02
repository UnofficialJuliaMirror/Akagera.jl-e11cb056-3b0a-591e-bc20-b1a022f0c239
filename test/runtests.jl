using Akagera: Animator, init!, set_msg!, start!, update_msg!, finish!
using Base.Test

@testset "Animator tests" begin
    @testset "Animator()" begin
        a = Animator(1)

        @test a.flag == false
        @test a.interval_ms == 1
        @test_throws UndefRefError a.msg
        @test_throws UndefRefError a.glyphs
        @test_throws UndefRefError a.animate_type
    end

    @testset "init!()" begin
        a = Animator(1)

        glyphs = ['T', 'e', 's', 't', '!']
        animate_type = "Test型"

        @test_throws UndefRefError a.glyphs
        @test_throws UndefRefError a.animate_type

        init!(a, glyphs, animate_type)

        @test a.flag == true
        @test a.glyphs == glyphs
        @test a.animate_type == animate_type
    end

    @testset "set_msg!()" begin
        a = Animator(1)

        @test_throws UndefRefError a.msg

        set_msg!(a, "TestMsg")

        @test a.msg == "TestMsg"
    end

    @testset "start!()" begin
        @testset "render()" begin
            a = Animator(1)

            glyphs = ['T', 'e', 's', 't', '!']
            animate_type = "Test型"

            init!(a, glyphs, animate_type)
            set_msg!(a, "TestMsg")

            @test string(a.glyphs[1] * " " * a.msg) == "T TestMsg"
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
        a = Animator(1)

        set_msg!(a, "TestMsg")

        @test a.msg == "TestMsg"

        update_msg!(a, "TestUpdatingMsg")

        @test a.msg == "TestUpdatingMsg"
    end

    @testset "finish!()" begin
        a = Animator(1)

        glyphs = ['T', 'e', 's', 't']
        animate_type = "Test型"

        init!(a, glyphs, animate_type)

        @test a.flag == true

        finish!(a)

        @test a.flag == false
    end
end
