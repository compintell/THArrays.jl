using THArrays
using Test

@testset "Tensor Array interface (except indexing)" begin

    @testset "Tensor array interface" begin
        ary = rand(2, 3)
        ten = Tensor(ary)
        @test eltype(ten) == eltype(ary)
        @test ndims(ten) == ndims(ary)
        @test size(ten) == size(ary)
    end

    @testset "Tensor iteration" begin
        ary = rand(2, 3)
        ten = Tensor(ary)
        for (idx, val) in enumerate(ten)
            @test ary[idx] == val[]
        end
    end

    @testset "Tensor concatenation" begin
        a1 = rand(2, 3)
        a2 = rand(2, 3)
        a3 = rand(2, 3)
        a4 = rand(2, 3)

        t1 = Tensor(a1)
        t2 = Tensor(a2)
        t3 = Tensor(a3)
        t4 = Tensor(a4)

        @test [t1 t2] == Tensor([a1 a2])
        @test [t1; t2] == Tensor([a1; a2])
        @test [t1 t2; t3 t4] == Tensor([a1 a2; a3 a4])
    end
end
