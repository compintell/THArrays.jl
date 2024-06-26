using THArrays
using Test

@testset "Issues Regression" begin

    @testset "Issue 7" begin
        Test.@test_throws ErrorException Tensor(3, requires_grad=true)
    end

    @testset "Issue 8" begin
        x = Tensor(rand(1, 10), requires_grad=true);

        f(x) = begin
            y = Tensor(0.0, requires_grad=true)
            for i = 1:length(x)
                y += x[i]
            end
            y
        end
        y = f(x)
        THAD.backward(y)

        @test THAD.grad(x) == Tensor(ones(1, 10))
    end
end
