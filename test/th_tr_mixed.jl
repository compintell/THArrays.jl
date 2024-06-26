using THArrays
using Tracker: forward, data
using Random
using Test

using THArrays.TrackerAD: _th, _tr

@testset "Torch and Tracker Mixed Gradient" begin

    Random.seed!(0);

    a = rand(3, 2)
    b = rand(3, 2)

    @testset "Simple Mixed AD" begin
        # all with th(PyTorch Backend)
        f1(x, y) = sum(sin.(_th(x)) + sin.(_th(y)))
        # sin with tr, (+, sum) wtih th
        f2(x, y) = sum(_th(sin.(x)) + _th(sin.(y)))
        # all with tr(Tracker Backend)
        f3(x, y) = sum((sin.(x)) + (sin.(y)))
        # (sin, +) with th, sum with tr
        f4(x, y) = sum(_tr(sin.(_th(x)) + sin.(_th(y))))
        # (sin, +) with tr, sum with th
        f5(x, y) = sum(_th(sin.(x) + sin.(y)))

        y1, back1 = forward(f1, a, b)
        y2, back2 = forward(f2, a, b)
        y3, back3 = forward(f3, a, b)
        y4, back4 = forward(f4, a, b)
        y5, back5 = forward(f5, a, b)

        b1 = data(back1(2))
        b2 = data(back2(2))
        b3 = data(back3(2))
        b4 = data(back4(2))
        b5 = data(back5(2))

        # @show y1, y2, y3, y4, y5
        # @show b1, b2, b3, b4, b5
        @test b1 == b2 == b3 == b4 == b5
    end

end
