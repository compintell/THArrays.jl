using THArrays
using Test

@testset "Tensor Creation" begin

    @testset "Creation with Array" begin
        ary = rand(2, 3)
        @test Tensor(ary) == Tensor(ary)
        @test convert(Array, Tensor(ary)) == ary
    end

    @testset "Creation with Array (sharing data)" begin
        ary = rand(2, 3)
        t = Tensor(ary)
        THArrays.THC.sin!(t)
        @test t == Tensor(ary)
    end

    @testset "Creation with Array (copying data)" begin
        ary = rand(2, 3)
        t = Tensor(ary, detach=true)
        THArrays.THC.sin!(t)
        @test isapprox(convert(Array, t), sin.(ary), atol=0.001)
    end

    @testset "Create with Number (0-dim Tensor)" begin
        t = Tensor(1.0)
        @test size(t) == ()
        @test length(t) == 1
        @test t[] == 1.0
    end
end
