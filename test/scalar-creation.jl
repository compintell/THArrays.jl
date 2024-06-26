using THArrays
using Test

@testset "Scalar Creation" begin

    @testset "Scalar creation" begin
        s = Scalar(1.0)
        @test s[] == 1.0
    end

    @testset "Scalar data type" begin
        for typ in [Float16, Float32, Float64,
                    Bool,
                    Int8, Int16, Int32, Int64]
            s = Scalar(typ(1))
            @test s.type == typ
        end
    end
end
