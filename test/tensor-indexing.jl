using THArrays
using Test

@testset "Tensor Indexing" begin

    j_vect = rand(10)
    t_vect = Tensor(j_vect)
    j_data = rand(2, 3, 4)
    t_data = Tensor(j_data)

    @testset "Indexing with Int" begin
        for i in 1:length(j_vect)
            @test t_vect[i][] == j_vect[i]
        end
        for i in 1:length(j_data)
            @test t_data[i][] == j_data[i]
        end
    end

    @testset "Indexing with Range" begin
        @test t_data[1:6] == Tensor(j_data[1:6])
        @test t_data[8:12] == Tensor(j_data[8:12])
        @test t_data[18:24] == Tensor(j_data[18:24])
    end

    @testset "Indexing with CartesianIndex" begin
        @test t_data[1, 2, :] == Tensor(j_data[1, 2, :])
        @test t_data[[1], 2, :] == Tensor(j_data[[1], 2, :])
        @test t_data[:, 2, :] == Tensor(j_data[:, 2, :])
        @test t_data[:, [2], :] == Tensor(j_data[:, [2], :])
        @test t_data[1:2, 2:3, 2:4] == Tensor(j_data[1:2, 2:3, 2:4])
    end

    @testset "Set Index with Int" begin
        for i in 1:length(j_data)
            t_data[i] = i
        end
        for i in 1:length(j_data)
            @test t_data[i][] == i
        end
    end

    @testset "Set Index with Range" begin
        t_data[1:4] = collect(1:4)
        for i in 1:4
            @test t_data[i][] == i
        end
    end

    @testset "Set Index with CartesianIndex" begin
        t_data[1, 1:2, 1:2] = zeros(2, 2)
        @test t_data[1, 1:2, 1:2] == Tensor(zeros(2, 2))
    end
end
