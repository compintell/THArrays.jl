using THArrays
using Random
using Test

@testset "Tensor Gradient" begin

    # Random.seed!(0);
    # a = rand(3, 2)
    # b = rand(3, 2)
    a = [0.4056994708920292 0.08597086585842195;
         0.06854582438651502 0.6616126907308237;
         0.8621408571954849 0.11632735383158599]
    b = [0.1093856021447891 0.028549977665983994;
         0.7020044441837296 0.538639413965653;
         0.2895098423219379 0.8969897902567084]

    ad_reseult = [3.8113989417840584 3.171941731716844;
                  3.13709164877303 4.323225381461647;
                  4.72428171439097 3.2326547076631718]

    @testset "Simple AD" begin
        ta = Tensor(a, requires_grad=true)
        tb = Tensor(b)
        tc = ta^2 + 3ta + sin(tb) - tb

        tg = Tensor(ones(3, 2))

        THAD.backward(tc, tg)

        @test THC.grad(ta) == Tensor(ad_reseult)
    end

    @testset "THAD.gradient" begin
        f(x, y) = x^2 + 3x + sin(y) - y
        grads = THAD.gradient(f, a, b; d=Tensor(ones(3,2)))
        @test grads[1] == Tensor(ad_reseult)
    end

    @testset "Reset gradient" begin
        t = Tensor(a, requires_grad=true)
        grads = THAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 2
        grads = THAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 4

        THAD.reset_grad!(t)
        grads = THAD.gradient(x -> sum(2x), t)
        @test grads[1] == Tensor(ones(3, 2)) * 2
    end

    @testset "THAD.forward" begin
        f(x, y) = sum(2x + 2y)
        y, back = THAD.forward(f, a, b)
        grads = back(1)
        @test grads[1] == grads[2] == Tensor(ones(3, 2)) * 2
    end


end
