#!/usr/bin/env julia
using Test
using Argon

@testset "Particle functionality" begin
    @testset "Particle" begin
        p1 = Particle()
        @test p1 isa Particle
        @test [p1.x p1.y p1.vx p1.vy] == fill(0.0, (1,4))

        p2 = Particle(1., 2., 3., 4.)
        @test [p2.x p2.y p2.vx p2.vy] == [1. 2. 3. 4.]
    end
end