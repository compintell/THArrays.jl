using THArrays
using Test

@testset "Simple TorchScript" begin

    @testset "Run simple method" begin
        script = """
def main(a, b):
    return a + b
"""
        cu = THJIT.compile(script)

        ta = Tensor(rand(3, 2))
        tb = Tensor(rand(3, 2))
        # cu["main"], cu[:main], cu.main
        res = cu.main(ta, tb)

        @test res == ta + tb
    end
end
