#!/usr/bin/env julia
using Test
using Argon

@testset "Particle functionality" begin
    @testset "Particle" begin
        p1 = Particle()
        @test p1 isa Particle
        @test [p1.x p1.y p1.vx p1.vy] == fill(0.0, (1,4))
    end
end