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

        backward(tc, tg)

        @test grad(ta) == Tensor(ad_reseult)
    end
end
