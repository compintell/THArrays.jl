using ThArrays
using Random
using Test

@testset "Tensor Gradient" begin

    Random.seed!(0);

    a = rand(3, 2)
    b = rand(3, 2)

    ad_reseult = [4.647295015954825 3.354657692932529;
                  4.820713075852873 3.557760218662402;
                  3.3291315962673704 3.4069531160838453]

    @testset "Simple AD" begin
        ta = Tensor(a, requires_grad=true)
        tb = Tensor(b)
        tc = ta^2 + 3ta + sin(tb) - tb

        tg = Tensor(ones(3, 2))

        ThAD.backward(tc, tg)

        @test ThC.grad(ta) == Tensor(ad_reseult)
    end

    @testset "ThAD.gradient" begin
        f(x, y) = x^2 + 3x + sin(y) - y
        grads = ThAD.gradient(f, a, b; d=Tensor(ones(3,2)))
        @test grads[1] == Tensor(ad_reseult)
    end

    @testset "Reset gradient" begin
        t = Tensor(a, requires_grad=true)
        grads = ThAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 2
        grads = ThAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 4

        ThAD.reset_grad!(t)
        grads = ThAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 2
    end

    @testset "ThAD.forward" begin
        f(x, y) = sum(2x + 2y)
        y, back = ThAD.forward(f, a, b)
        grads = back(1)
        @test grads[1] == grads[2] == Tensor(ones(3, 2)) * 2
    end


end
